package com.bookstore.entity;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.bookstore.entity.Users;

public class CategoryTest {

	public static void main(String[] args) {
		// create Category Object
		Category category1 = new Category("Book Store");
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		entityManager.getTransaction().begin();
		entityManager.persist(category1);
		entityManager.getTransaction().commit();
//		entityManager.close();
//		entityManagerFactory.close();
        //output
		System.out.println("category1 was inserted successfully");
	}

}
