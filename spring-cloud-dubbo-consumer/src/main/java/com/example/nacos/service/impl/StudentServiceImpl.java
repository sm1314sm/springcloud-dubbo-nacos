package com.example.nacos.service.impl;

import com.example.nacos.entity.Student;
import com.example.nacos.service.StudentService;
import com.example.nacos.service.ProductService;
import org.apache.dubbo.config.annotation.DubboReference;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {
    @DubboReference(check = false)
    private ProductService productService;

    @Override
    public Student getStudent() {
        Student student = new Student();
        student.setName("tom");
        student.setSex("男");
        String message = productService.getProductInfo("kk");
        student.setMessage(message);
        return student;
    }
}
