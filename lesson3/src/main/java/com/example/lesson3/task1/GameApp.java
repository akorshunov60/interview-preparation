package com.example.lesson3.task1;

public class GameApp {

    public static void main(String[] args) {

        TableTennis ball = new TableTennis();

        new RogerFederer(ball);
        new RafaNadal(ball);
    }
}
