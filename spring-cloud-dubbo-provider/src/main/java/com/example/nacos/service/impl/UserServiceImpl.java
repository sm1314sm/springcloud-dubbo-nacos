package com.example.nacos.service.impl;

import com.example.nacos.service.UserService;
import com.example.nacos.service.TestService;
import com.example.nacos.entity.User;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {
    @DubboReference(check = false)
    private TestService testService;

    @Override
    public User getUser() {
        User user = new User();
        user.setUser("tom");
        user.setPassword("12787875dfsd");
        String message = testService.getTestInfo("fgh");
        user.setNote(message);
        return user;
    }
}
