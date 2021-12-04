package com.example.lesson2.task1;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Iterator;

public class LinkedContainer<E> implements MyLinkedInterface<E>, Iterable<E>, MyDescendingIterator<E> {

    private Node<E> firstNode;
    private Node<E> lastNode;
    private int size = 0;

    public LinkedContainer() {
        lastNode = new Node<>(null, firstNode, null);
        firstNode = new Node<>(null, null, lastNode);
    }

    @Override
    public void addLast(E e) {
        Node<E> newElementPrev = lastNode;
        newElementPrev.setCurrentElement(e);
        lastNode = new Node<>(null, newElementPrev, null);
        newElementPrev.setNextElement(lastNode);
        size++;
    }

    @Override
    public void addFirst(E e) {
        Node<E> newElementNext = firstNode;
        newElementNext.setCurrentElement(e);
        firstNode = new Node<>(null, null, newElementNext);
        newElementNext.setPreviousElement(firstNode);
        size++;
    }

    @Override
    public int size() {
        return size;
    }

    @Override
    public E getElementByIndex(int index) {

        Node<E> target = firstNode.getNextElement();
        for (int i = 0; i < index; i++) {
            target = getElement(target);
        }
        return target.getCurrentElement();
    }

    private Node<E> getElement(Node<E> current) {
        return current.getNextElement();
    }

    @Override
    public Iterator<E> iterator() {
        return new Iterator<>() {

            int counter = 0;

            @Override
            public boolean hasNext() {
                return counter < size;
            }

            @Override
            public E next() {
                return getElementByIndex(counter++);
            }
        };
    }

    @Override
    public Iterator<E> descendingIterator() {
        return new Iterator<>() {

            int counter = size - 1;

            @Override
            public boolean hasNext() {
                return counter >= 0;
            }

            @Override
            public E next() {
                return getElementByIndex(counter--);
            }
        };
    }

    @AllArgsConstructor
    @Data
    protected static class Node<E> {

        private E currentElement;
        private Node<E> previousElement;
        private Node<E> nextElement;
    }
}
