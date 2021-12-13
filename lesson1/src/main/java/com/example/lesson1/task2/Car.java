package com.example.lesson1.task2;

/*
    Класс Car является агрегирующим, класс Engine является компонентом,
    представляющим самостоятельный объект и для описания его состояния
    и поведения необходимо создать класс Engine.
    Для оптимизации и удобства использования класса Car можно предложить создать
    nested class Builder.
 */
abstract class Car {

    public Engine engine;
    private String color;
    private String name;

/*
    Метод start() в этом классе не нужен, т.к. есть интерфейс Movable,
    описывающий такое же поведение.

    protected void start() {

        System.out.println("Car starting");
    }
*/

    abstract void open();

    public Engine getEngine() {
        return engine;
    }

    public void setEngine(Engine engine) {
        this.engine = engine;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
