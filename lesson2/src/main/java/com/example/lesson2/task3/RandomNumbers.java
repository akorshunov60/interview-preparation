package com.example.lesson2.task3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

public class RandomNumbers {

    public static void main(String[] args) {

        List<Integer> randomNumbers = new ArrayList<>();

        for (int i = 0; i < 10; i++) {
            Random random = new Random();
            int x = random.nextInt(100);
            randomNumbers.add(x);
        }
        Iterator<Integer> numbers = randomNumbers.iterator();
        while (numbers.hasNext()) {
            System.out.println(numbers.next());
        }
    }
}
