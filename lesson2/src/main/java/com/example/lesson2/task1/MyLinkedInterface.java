package com.example.lesson2.task1;

public interface MyLinkedInterface<E> {

    void addLast(E e);
    void addFirst(E e);
    int size();
    E getElementByIndex(int index);
}
