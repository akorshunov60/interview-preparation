package com.example.lesson7.controllers;

import com.example.lesson7.exceptions.ResourceNotFoundException;
import com.example.lesson7.models.Student;
import com.example.lesson7.services.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/student")
public class StudentController {

    private final StudentService studentService;

    @Autowired
    public StudentController(StudentService studentService) {
        this.studentService = studentService;
    }

    @GetMapping
    public List<Student> findAllStudents() {
        return studentService.findAllStudents();
    }

    @GetMapping("/{id}")
    public Student findStudentById(@PathVariable Long id) {
        return studentService.findStudentById(id).orElseThrow(
                () -> new ResourceNotFoundException("Student id: " + id + " not found"));
    }

    @DeleteMapping("/{id}")
    public void deleteStudentById(@PathVariable Long id) {
        studentService.deleteStudentById(id);
    }

    @PostMapping
    public Student createNewStudent(@RequestParam String name, @RequestParam int age) {
        return studentService.createOrUpdateStudent(name, age);
    }

    @PutMapping
    public Student updateStudent(@RequestParam String name, @RequestParam int age) {
        return studentService.createOrUpdateStudent(name, age);
    }
}