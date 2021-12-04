package com.example.lesson2.task1;

import java.util.Iterator;

public class MyLinkedContainerTest {

    public static void main(String[] args) {

        LinkedContainer<String> workDays = new LinkedContainer<>();

        workDays.addFirst("понедельник");
        workDays.addFirst("вторник");
        workDays.addFirst("среда");
        workDays.addFirst("четверг");
        workDays.addFirst("пятница");

        for (String day : workDays) {
            System.out.println(day);
        }

        Iterator<String> iterator = workDays.descendingIterator();
        while(iterator.hasNext()) {
            System.out.println(iterator.next());
        }
    }
}
