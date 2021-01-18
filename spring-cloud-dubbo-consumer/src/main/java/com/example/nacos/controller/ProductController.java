package com.example.nacos.controller;

import com.example.nacos.entity.Student;
import com.example.nacos.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ProductController {
    @Autowired
    private StudentService studentService;

    @PostMapping("/student")
    public Student getStudent() {
        return studentService.getStudent();
    }
}
