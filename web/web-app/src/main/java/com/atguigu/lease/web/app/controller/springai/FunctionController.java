package com.atguigu.lease.web.app.controller.springai;


import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.ai.chat.model.ChatModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import reactor.core.publisher.Flux;

@Tag(name = "ai对话助手")
@RestController
@RequestMapping("/app/ai/test")
public class FunctionController {

    @Autowired
    private ChatModel chatModel;


    /**
     * ai对话助手
     *
     * @param userMessage
     * @return
     */
    @Operation(summary = "ai对话助手")
    @GetMapping(value = "/function", produces = MediaType.TEXT_HTML_VALUE + ";charset=UTF-8")
    public Flux<String> function01(@RequestParam("userMessage") String userMessage) {
        Flux<String> content = ChatClient.builder(chatModel)
                .build().prompt()
                .system("""
                        您是公寓推荐助手。
                        您能够支持公寓信息查询、房间信息查询、设施信息查询、租约信息查询、房间属性查询等操作，其余功能将在后续版本中添加，如果用户问的问题不支持请告知详情。
                        在提供公寓信息查询服务之前，您必须从用户处获取如下信息：公寓名称、公寓介绍、区域名称、房间号、手机号、房间属性（朝向、面积等）、所在省份等。
                        请调用自定义函数执行公寓信息查询、房间属性查询、房间信息查询、设施信息查询、租约信息查询等操作。
                        请讲中文。
                        """)
                .user(userMessage)
                .functions("apartmentOperation", // 根据公寓名称、区域名称、公寓介绍、查询对应的公寓信息
                        "attrOperation", // 根据房间属性名称查询对应的属性值
                        "apartmentInfoOperation", // 根据房间属性值查询对应的房间id
                        "roomStatusOperation", // 根据房间id查询对应的房间状态
                        "facilityOperation",// 根据房间id查询对应的配套信息
                        "roomInfoOperation"// 根据房间id查询对应的房间信息
                )
                .stream()
                .content();

        System.out.println("ai助手：" + content);

        return content;
    }
}