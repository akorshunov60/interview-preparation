package com.example.lesson1.task3;

public class Circle extends Shape implements Plottable{

    @Override
    void draw() {
        System.out.println("Рисуем круг");
    }

    @Override
    public void plot() {
        System.out.println("Печатаем круг");
    }
}
