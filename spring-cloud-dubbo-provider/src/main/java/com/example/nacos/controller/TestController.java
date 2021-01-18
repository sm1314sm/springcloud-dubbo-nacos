package com.example.nacos.controller;

import com.example.nacos.entity.User;
import com.example.nacos.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {
    @Autowired
    private UserService userService;

    @PostMapping("/user")
    public User getUser() {
        return userService.getUser();
    }
}
