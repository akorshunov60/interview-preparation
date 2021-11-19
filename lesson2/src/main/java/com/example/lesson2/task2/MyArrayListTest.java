package com.example.lesson2.task2;

public class MyArrayListTest {

    public static void main(String[] args) {

        MyInterface<String> workDays = new MyArrayList<>();

        workDays.add("понедельник");
        workDays.add("вторник");
        workDays.add("среда");
        workDays.add("четверг");
        workDays.add("пятница");

        for (String day : workDays) {
            System.out.println(day);
        }

        System.out.println("Получение элемента массива по индексу '1': " + workDays.get(1));
        System.out.println("Всего элементов в массиве: " + workDays.size());
        workDays.update(4, "friday");
        System.out.println("Замена элемента 'пятница' на 'friday': " + workDays.get(4));
        workDays.remove(1);
        System.out.println("Удаление элемента массива 'вторник' по индексу '1': " + workDays.get(1));
    }
}
