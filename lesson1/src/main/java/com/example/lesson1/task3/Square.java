package com.example.lesson1.task3;

public class Square extends Shape implements Plottable{

    @Override
    void draw() {
        System.out.println("Рисуем квадрат");
    }

    @Override
    public void plot() {
        System.out.println("Печатаем квадрат");
    }
}
