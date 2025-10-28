package com.atguigu.lease.web.app.controller.springai;

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

    // 使用内存存储会话历史，key为sessionId，value为对话历史列表
    private static final Map<String, List<Message>> conversationHistory = new ConcurrentHashMap<>();

    /**
     * AI对话助手（带会话记忆功能）
     *
     * @param userMessage 用户消息
     * @param sessionId   会话ID
     * @return AI响应流
     */
    @Operation(summary = "ai对话助手（支持会话记忆）")
    @PostMapping(value = "/function", produces = MediaType.TEXT_HTML_VALUE + ";charset=UTF-8")
    public Flux<String> chatWithMemory(
            @RequestParam("userMessage") String userMessage,
            @RequestParam("sessionId") String sessionId) {

        try {
            // 获取当前会话的历史记录，如果不存在则创建新的
            List<Message> history = conversationHistory.computeIfAbsent(sessionId, k -> new CopyOnWriteArrayList<>());
            
            // 构建系统提示词
            String systemPrompt = """
                    您是公寓推荐助手，名叫小易。
                    您能够支持公寓信息查询、房间信息查询、设施信息查询、租约信息查询、房间属性查询等操作。
                    在提供公寓信息查询服务之前，您必须从用户处获取如下信息：公寓名称、公寓介绍、区域名称、房间号、手机号、房间属性（朝向、面积等）、所在省份等。
                    请调用自定义函数执行公寓信息查询、房间属性查询、房间信息查询、设施信息查询、租约信息查询等操作。
                    所有图片信息都包含完整的URL地址，可以直接使用。
                    请讲中文。
                    """;

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
                            "apartmentOperation", // 根据公寓名称、省份名称、城市名称、区域名称、公寓介绍、查询对应的公寓信息
                            "attrOperation", // 根据房间属性名称查询对应的属性值
                            "apartmentInfoOperation", // 根据房间属性值查询对应的房间id
                            "roomStatusOperation", // 根据房间id查询对应的房间状态
                            "facilityOperation", // 根据房间id查询对应的配套信息
                            "roomInfoOperation", // 根据房间id查询对应的房间信息
                            "roomsByApartmentNameOperation", // 根据公寓名称查询所有房间号
                            "roomByRentRangeOperation", // 根据租金范围查询房间
                            "roomByPaymentTypeOperation", // 根据付款方式查询房间
                            "roomByLeaseTermOperation", // 根据租期查询房间
                            "availableRoomsByApartmentIdOperation", // 根据公寓ID查询可租房源
                            "leaseTermInfoOperation", // 根据房间ID查询租期信息
                            "paymentTypeInfoOperation", // 根据房间ID查询付款方式
                            "apartmentDetailInfoOperation", // 根据公寓ID查询公寓详细信息
                            "roomsByRegionOperation", // 根据省份名称、城市名称、区域名称查询房间
                            "roomsByApartmentIdOperation", // 根据公寓ID查询房间列表
                            "roomDetailOperation", // 根据房间ID查询房间详细信息
                            "facilityByRoomIdOperation" // 根据房间ID查询配套信息
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

}