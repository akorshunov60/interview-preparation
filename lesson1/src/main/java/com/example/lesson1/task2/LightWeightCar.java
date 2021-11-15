package com.example.lesson1.task2;

class LightWeightCar extends Car implements Movable{

    @Override
    void open() {
        System.out.println("Car is open");
    }

/*
    Метод start() замена метода move()
 */
    @Override
    public void start() {
        System.out.println("Car is moving");
    }

/*
    Метод stop() в этом классе отсутствовал, что не полностью описывает поведение объекта.
    Т.к. если объект умеет стартовать, то логично предположить, что он должен уметь и
    остановиться. Как альтернативу можно предложить интерфейс Movable с одним методом move(),
    тогда движение со скоростью равной "0", будет означать остановку.
 */
    @Override
    public void stop() {
        System.out.println("Car is stop");
    }
}
