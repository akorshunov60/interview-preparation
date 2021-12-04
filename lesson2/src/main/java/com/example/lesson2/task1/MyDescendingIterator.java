package com.example.lesson2.task1;

import java.util.Iterator;

public interface MyDescendingIterator<E> extends Iterable<E> {

    Iterator<E> descendingIterator();
}
