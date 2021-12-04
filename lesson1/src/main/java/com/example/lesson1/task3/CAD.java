package com.example.lesson1.task3;

public class CAD {

    public void drawShape(Shape[] shapes) {
        for (Shape shape : shapes) {
            shape.draw();
        }
    }
}
