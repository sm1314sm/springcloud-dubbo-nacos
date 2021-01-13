package com.example.nacos.controller;

import com.example.nacos.service.ProductService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductController {
    @DubboReference
    private ProductService productService;

    @GetMapping("/product")
    public String getProductInfo(String msg){
        return productService.getProductInfo(msg);
    }
}
