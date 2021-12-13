package com.example.lesson1.task2;

public class Lorry extends Car implements Movable{

    @Override
    void open() {
        System.out.println("Car is open");
    }

    @Override
    public void start() {
        System.out.println("Car is moving");
    }

    @Override
    public void stop() {
        System.out.println("Car is stop");
    }
}
