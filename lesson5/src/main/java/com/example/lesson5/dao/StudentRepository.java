package com.example.lesson5.dao;

import com.example.lesson5.entities.Student;
import lombok.Data;
import lombok.RequiredArgsConstructor;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import java.util.List;
import java.util.Optional;
import java.util.function.Consumer;
import java.util.function.Function;

@Data
@RequiredArgsConstructor
public class StudentRepository {

    private final EntityManagerFactory emf;

    public List<Student> findAll() {
        return executeForEntityManager(
                em -> em.createQuery("select s from Student s", Student.class)
                        .getResultList());
    }

    public Optional<Student> findById(long id) {
        return executeForEntityManager(
                em -> Optional.ofNullable(em.find(Student.class, id)));
    }

    public void insert(Student student) {
        executeInTransaction(em -> em.persist(student));
    }

    public void update(Student student) {
        executeInTransaction(em -> em.merge(student));
    }

    public void deleteById(long id) {
        executeInTransaction(em -> em.createQuery("delete from Student where id = :id")
                .setParameter("id", id)
                .executeUpdate());
    }

    private <R> R executeForEntityManager(Function<EntityManager, R> function) {
        EntityManager em = emf.createEntityManager();
        try {
            return function.apply(em);
        } finally {
            em.close();
        }
    }

    private void executeInTransaction(Consumer<EntityManager> consumer) {
        EntityManager em = emf.createEntityManager();
        try {
            em.getTransaction().begin();
            consumer.accept(em);
            em.getTransaction().commit();
        } catch (Exception e) {
            e.printStackTrace();
            em.getTransaction().rollback();
        }
        finally {
            em.close();
        }
    }
}
