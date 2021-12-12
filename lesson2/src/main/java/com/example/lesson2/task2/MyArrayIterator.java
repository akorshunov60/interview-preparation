package com.example.lesson2.task2;

import java.util.Iterator;

public class MyArrayIterator<E> implements Iterator<E> {

    private int index = 0;
    private final E[] values;

    MyArrayIterator(E[] values) {
        this.values = values;
    }

    @Override
    public boolean hasNext() {
        return index < values.length;
    }

    @Override
    public E next() {
        return values[index++];
    }
}
