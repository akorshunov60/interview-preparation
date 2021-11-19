package com.example.lesson1.task2;

public interface Movable {

/*
    Вместо метода move() предлагаю два метода, описывающих движение:
    метод start() перенести из класса Car и
    метод stop() перенести из интерфейса Stoppable, интерфейс удалить

    void move();
*/

    void start();

    void stop();
}
