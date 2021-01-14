package com.example.nacos.service;

import org.apache.dubbo.config.annotation.DubboService;

@DubboService
public class ProductServiceImpl implements ProductService {
    @Override
    public String getProductInfo(String msg) {
        return "hello," + msg + ",给我来100头马马哈哈！";
    }
}
