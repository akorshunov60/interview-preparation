package com.example.lesson3.task2;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/*
Преимущества и недостатки каждого из способов: Lock vs synchronized

- Lock API обеспечивает больше возможностей для блокировки, в отличие от synchronized,
  где поток может бесконечно ожидать лок.

- В Lock API мы можем использовать метод tryLock(), чтобы ожидать лок только определенное время.

- Синхронизированный код намного чище и проще в поддержке.
  В случае использования Lock API мы вынуждены писать try-finally блок, чтобы убедиться в том,
  что блокировка будет снята.

- Блоки синхронизации могут покрывать только один метод, в то время как Lock API
  позволяет получить lock в одном методе, а снять его в другом.
 */

public class CounterLockExample {

    public static void main(String[] args) throws InterruptedException {

        CounterLock counter = new CounterLock();

        for(int i=0; i<20; i++) {
            CounterLockThread clt = new CounterLockThread(counter);
            clt.start();
        }
        Thread.sleep(1000);

        System.out.println("Counter:" + counter.getCounter());
    }
}

class CounterLock {

    private long counter = 0L;
    private final Lock lock= new ReentrantLock();

    public void increaseCounter() {
        try {
            if (lock.tryLock(10, TimeUnit.SECONDS)) {
                counter++;
            }
        } catch (InterruptedException e) {
            e.printStackTrace();
        } finally {
        lock.unlock();
        }
    }

    public long getCounter() {
        return counter;
    }
}

class CounterLockThread extends Thread {

    private final CounterLock counter;

    public CounterLockThread(CounterLock counter) {
        this.counter = counter;
    }

    @Override
    public void run() {
        for (int i = 0; i < 100; i++) {
            counter.increaseCounter();
        }
    }
}
