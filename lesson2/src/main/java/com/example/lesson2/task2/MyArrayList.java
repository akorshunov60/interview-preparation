package com.example.lesson2.task2;

import java.util.Iterator;

public class MyArrayList<E> implements MyInterface<E> {

    private E[] values;

    public MyArrayList() {
        values = (E[]) new Object[0];
    }

    @Override
    public boolean add(E t) {
        try {
            E[] temp = values;
            values = (E[]) new Object[temp.length + 1];
            System.arraycopy(temp, 0, values, 0, temp.length);
            values[values.length - 1] = t;
            return true;
        } catch (ClassCastException cce) {
            cce.printStackTrace();
        }
        return false;
    }

    @Override
    public void remove(int index) {
        try {
            E[] temp = values;
            values = (E[]) new Object[temp.length - 1];

            System.arraycopy(
                    temp, 0,
                    values, 0,
                    index);

            int numberOfElementsAfterIndex = temp.length - index - 1;

            System.arraycopy(
                    temp, index + 1,
                    values, index,
                    numberOfElementsAfterIndex);

        } catch (ClassCastException cce) {
            cce.printStackTrace();
        }
    }

    @Override
    public E get(int index) {
        return values[index];
    }

    @Override
    public int size() {
        return values.length;
    }

    @Override
    public void update(int index, E e) {
        values[index] = e;
    }

    @Override
    public Iterator<E> iterator() {
        return new MyArrayIterator<>(values);
    }
}
