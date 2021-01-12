package com.bookstore.dao;

import static org.junit.Assert.assertTrue;
import static org.junit.jupiter.api.Assertions.*;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.Test;

import com.bookstore.entity.Users;

class UserDAOTest {

	@Test
	void testCreateUsers() {
		Users user1 = new Users();
		user1.setEmail("muhammadfakemail@gmail.com");
		user1.setFullName("MuhammadORC");
		user1.setPassword("Password2555");

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		UserDAO userDao = new UserDAO(entityManager);
		user1 = userDao.create(user1);
		

		assertTrue(user1.getUserId() > 0);
	}

}
