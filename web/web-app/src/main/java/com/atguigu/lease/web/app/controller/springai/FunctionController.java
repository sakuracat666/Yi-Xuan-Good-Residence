package com.atguigu.lease.web.app.controller.springai;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.messages.AssistantMessage;
import org.springframework.ai.chat.messages.Message;
import org.springframework.ai.chat.messages.UserMessage;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicReference;

@Tag(name = "ai对话助手")
@RestController
@RequestMapping("/app/ai/test")
@Slf4j
public class FunctionController {

    @Autowired
    private ChatModel chatModel;

    private static final ObjectMapper objectMapper = new ObjectMapper();

    // 使用内存存储会话历史，key为sessionId，value为对话历史列表
    private static final Map<String, List<Message>> conversationHistory = new ConcurrentHashMap<>();

    /**
     * AI对话助手（带会话记忆功能和位置感知）
     *
     * @param userMessage  用户消息
     * @param sessionId    会话ID
     * @param userLocation 用户位置信息（JSON格式，可选）
     * @return AI响应流
     */
    @Operation(summary = "ai对话助手（支持会话记忆和位置感知）")
    @PostMapping(value = "/function", produces = MediaType.TEXT_HTML_VALUE + ";charset=UTF-8")
    public Flux<String> chatWithMemory(
            @RequestParam("userMessage") String userMessage,
            @RequestParam("sessionId") String sessionId,
            @RequestParam(value = "userLocation", required = false) String userLocation) {

        try {
            // 获取当前会话的历史记录，如果不存在则创建新的
            List<Message> history = conversationHistory.computeIfAbsent(sessionId, k -> new CopyOnWriteArrayList<>());

            // 解析用户位置信息
            String locationContext = parseUserLocation(userLocation);

            // 构建系统提示词（包含位置上下文）
            String systemPrompt = buildSystemPrompt(locationContext);

            // 构建包含历史记录的对话上下文
            List<Message> conversationContext = new ArrayList<>();
            conversationContext.add(new UserMessage(systemPrompt));
            conversationContext.addAll(history);

            // 收集AI响应
            AtomicReference<StringBuilder> aiResponseBuilder = new AtomicReference<>(new StringBuilder());

            // 执行AI对话并获取响应流
            Flux<String> responseFlux = ChatClient.builder(chatModel)
                    .build()
                    .prompt()
                    .messages(conversationContext)
                    .user(userMessage)
                    .functions(
                            // 公寓相关查询
                            "apartmentOperation", // 根据公寓名称、省份名称、城市名称、区域名称、公寓介绍查询公寓信息
                            "apartmentDetailInfoOperation", // 根据公寓ID查询公寓详细信息

                            // 房间基础查询
                            "roomInfoOperation", // 根据房间ID查询房间信息
                            "roomDetailOperation", // 根据房间ID查询房间详细信息
                            "roomStatusOperation", // 根据房间ID查询房间状态
                            "roomsByApartmentNameOperation", // 根据公寓名称查询所有房间
                            "roomsByApartmentIdOperation", // 根据公寓ID查询房间列表
                            "roomsByRegionOperation", // 根据省份、城市、区域查询房间

                            // 条件筛选查询
                            "roomByRentRangeOperation", // 根据租金范围查询房间
                            "roomByPaymentTypeNameOperation", // 根据付款方式名称（押一付一等）查询房间
                            "roomByLeaseTermNameOperation", // 根据租期名称（1个月、3个月等）查询房间
                            "roomByAreaRangeOperation", // 根据面积范围查询房间
                            "roomByMultiConditionOperation", // 多条件组合查询房间
                            "allAvailableRoomsOperation", // 获取所有可租房源
                            "availableRoomsByApartmentIdOperation", // 根据公寓ID查询可租房源

                            // 属性和配套查询
                            "attrOperation", // 根据属性名称查询属性值
                            "apartmentInfoOperation", // 根据属性值查询房间ID
                            "facilityOperation", // 根据房间号查询配套信息
                            "facilityByRoomIdOperation", // 根据房间ID查询配套信息

                            // 租期和付款方式查询
                            "leaseTermInfoOperation", // 根据房间ID查询租期信息
                            "paymentTypeInfoOperation", // 根据房间ID查询付款方式
                            "allPaymentTypesOperation", // 获取所有付款方式列表
                            "allLeaseTermsOperation", // 获取所有租期列表

                            // 兼容旧接口
                            "roomByPaymentTypeOperation", // 根据付款方式ID查询房间
                            "roomByLeaseTermOperation" // 根据租期ID查询房间
                    )
                    .stream()
                    .content();

            return responseFlux
                    .doOnNext(chunk -> {
                        // 收集响应内容片段
                        aiResponseBuilder.get().append(chunk);
                    })
                    .doOnComplete(() -> {
                        // 将当前对话添加到历史记录中
                        history.add(new UserMessage(userMessage));
                        history.add(new AssistantMessage(aiResponseBuilder.toString()));

                        // 限制历史记录长度，避免占用过多内存
                        if (history.size() > 20) {
                            history.subList(0, history.size() - 20).clear();
                        }
                    })
                    .doOnError(error -> {
                        log.error("对话处理异常: {}", error.getMessage(), error);
                    });

        } catch (Exception e) {
            log.error("对话处理异常: {}", e.getMessage(), e);
            return Flux.just("抱歉，处理您的消息时发生了错误，请稍后重试。");
        }
    }

    /**
     * 解析用户位置信息
     *
     * @param userLocation JSON格式的位置信息
     * @return 格式化的位置描述字符串
     */
    private String parseUserLocation(String userLocation) {
        if (userLocation == null || userLocation.trim().isEmpty()) {
            return "";
        }

        try {
            JsonNode locationNode = objectMapper.readTree(userLocation);

            StringBuilder locationDesc = new StringBuilder();

            // 获取省份
            String province = getJsonString(locationNode, "province");
            // 获取城市
            String city = getJsonString(locationNode, "city");
            // 获取区县
            String district = getJsonString(locationNode, "district");
            // 获取详细地址
            String address = getJsonString(locationNode, "address");

            // 构建位置描述
            if (!province.isEmpty()) {
                locationDesc.append(province);
            }
            if (!city.isEmpty()) {
                if (locationDesc.length() > 0) {
                    locationDesc.append("");
                }
                locationDesc.append(city);
            }
            if (!district.isEmpty()) {
                if (locationDesc.length() > 0) {
                    locationDesc.append("");
                }
                locationDesc.append(district);
            }

            String result = locationDesc.toString();
            if (!result.isEmpty()) {
                log.info("用户位置已解析: {}", result);
            }

            return result;
        } catch (Exception e) {
            log.warn("解析用户位置信息失败: {}", e.getMessage());
            return "";
        }
    }

    /**
     * 从JsonNode中安全获取字符串值
     *
     * @param node  JsonNode对象
     * @param field 字段名
     * @return 字符串值，如果不存在则返回空字符串
     */
    private String getJsonString(JsonNode node, String field) {
        if (node == null || !node.has(field) || node.get(field).isNull()) {
            return "";
        }
        return node.get(field).asText("");
    }

    /**
     * 构建系统提示词（包含位置上下文）
     *
     * @param locationContext 用户位置上下文
     * @return 完整的系统提示词
     */
    private String buildSystemPrompt(String locationContext) {
        StringBuilder prompt = new StringBuilder();

        prompt.append("""
                您是公寓推荐助手，名叫小易。
                您能够支持公寓信息查询、房间信息查询、设施信息查询、租约信息查询、房间属性查询等操作。
                """);

        // 如果有用户位置信息，添加到提示词中
        if (locationContext != null && !locationContext.isEmpty()) {
            prompt.append("\n【重要】用户当前位置信息：").append(locationContext).append("\n");
            prompt.append("""
                    由于已经获取到用户的位置信息，您可以：
                    1. 优先推荐用户所在区域附近的房源
                    2. 在用户询问房源时，默认按照用户所在位置进行搜索
                    3. 不需要再询问用户的位置信息，除非用户明确表示想要查看其他区域的房源
                    4. 可以主动告知用户"根据您的位置，为您推荐以下附近房源"
                    """);
        } else {
            prompt.append("""
                    在提供公寓信息查询服务之前，您需要从用户处获取如下信息：公寓名称、公寓介绍、区域名称、房间号、手机号、房间属性（朝向、面积等）、所在省份等。
                    """);
        }

        prompt.append("""
                请调用自定义函数执行公寓信息查询、房间属性查询、房间信息查询、设施信息查询、租约信息查询等操作。
                所有图片信息都包含完整的URL地址，可以直接使用。
                请讲中文。
                """);

        return prompt.toString();
    }

}