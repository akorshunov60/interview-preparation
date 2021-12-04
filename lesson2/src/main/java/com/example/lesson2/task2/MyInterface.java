package com.example.lesson2.task2;

public interface MyInterface<E> extends Iterable<E> {

    boolean add(E e);

    void remove(int index);

    E get(int index);

    int size();

    void update(int index, E e);
}
