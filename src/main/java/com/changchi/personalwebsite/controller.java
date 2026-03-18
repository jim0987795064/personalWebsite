package com.changchi.personalwebsite;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller // 注意：這裡必須是 @Controller，不能是 @RestController
public class controller {

    @GetMapping("/") // 當訪問首頁時
    public String index() {
        return "index"; // 這裡的 "index" 會對應到 templates/index.html
    }
}