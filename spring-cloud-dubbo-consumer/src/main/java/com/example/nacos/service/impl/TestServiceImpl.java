package com.example.nacos.service.impl;

import com.example.nacos.service.TestService;
import org.apache.dubbo.config.annotation.DubboService;

@DubboService
public class TestServiceImpl implements TestService {
    @Override
    public String getTestInfo(String msg) {
        return "hello," + msg + ",给你一头鹿！";
    }
}
