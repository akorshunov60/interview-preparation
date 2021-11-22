package com.example.lesson1.task3;

public class Triangle extends Shape implements Plottable{

    @Override
    void draw() {
        System.out.println("Рисуем треугольник");
    }

    @Override
    public void plot() {
        System.out.println("Печатаем треугольник");
    }
}
