package com.example.lesson5;

import com.example.lesson5.entities.Student;
import com.example.lesson5.factories.HibernateSessionFactory;
import org.hibernate.Session;

import java.util.Random;

public class Lesson5Application {

    public static void main(String[] args) {

        Session session = HibernateSessionFactory.getSessionFactory().openSession();
        session.beginTransaction();

        for (int i = 1; i <= 10; i++) {
            Student student = new Student();
            student.setName("Student" + i);
            student.setMark(new Random().nextInt(10));
            session.save(student);
        }
        session.getTransaction().commit();
        session.close();
    }
}
