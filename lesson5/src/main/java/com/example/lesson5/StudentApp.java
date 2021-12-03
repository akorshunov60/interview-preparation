package com.example.lesson5;

import com.example.lesson5.dao.StudentRepository;
import org.hibernate.cfg.Configuration;

import javax.persistence.EntityManagerFactory;

public class StudentApp {

    public static void main(String[] args) {

        // Вместо SessionFactory лучше пользоваться EntityManagerFactory стандарта JPA,
        // т.к. эта фабрика потокобезопасна.
        EntityManagerFactory emf = new Configuration()
                .configure("hibernate.cfg.xml")
                .buildSessionFactory();
//        emf.createEntityManager();// внутри EntityManager находятся IdentityManager и UnitOfWork

        StudentRepository students = new StudentRepository(emf);
        students.findAll().forEach(System.out::println);
    }
}
