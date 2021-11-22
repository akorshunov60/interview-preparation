package com.example.lesson3.task1;

public class RafaNadal implements Runnable{

    TableTennis ball;

    public RafaNadal(TableTennis ball) {
        this.ball = ball;
        new Thread(this, "Rafa Nadal").start();
    }

    @Override
    public void run() {
        while (true) {
            ball.get();
        }
    }
}
