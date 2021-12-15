package com.example.lesson3.task1;

public class RogerFederer implements Runnable{

    TableTennis ball;

    public RogerFederer(TableTennis ball) {
        this.ball = ball;
        new Thread(this, "Roger Federer").start();
    }

    @Override
    public void run() {
        while (true) {
            ball.set();
        }
    }
}
