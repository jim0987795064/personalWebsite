package com.changchi.personalwebsite;

import org.springframework.stereotype.Service;

@Service
public class UserService {
    // 模擬從資料庫撈資料的邏輯
    public User getUserById(String id) {
        if (id.equals("1")) {
            return new User("1", "徐常志");
        }
        return new User(id, "未知用戶");
    }
}