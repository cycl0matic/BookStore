package com.bookstore.dao;

import static org.junit.Assert.assertTrue;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.junit.After;
import org.junit.BeforeClass;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;

import com.bookstore.entity.Users;

class UserDAOTest {
	private static EntityManagerFactory entityManagerFactory;
	private static EntityManager entityManager;
	private static UserDAO userDao;

	@BeforeClass
	public static void setipClass() {
		entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		entityManager = entityManagerFactory.createEntityManager();
		userDao = new UserDAO(entityManager);
	}

	@Test
	void testCreateUsers() {
//		creating object
		Users user1 = new Users();
//		setting fields
		user1.setEmail("muhammadfakemail@gmail.com");
		user1.setFullName("MuhammadORC");
		user1.setPassword("Password2555");

		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();

		UserDAO userDao = new UserDAO(entityManager);
		user1 = userDao.create(user1);

		assertTrue(user1.getUserId() > 0);
	}

	@Test
	void testCreateUsersFieldsNotSet() {

		Assertions.assertThrows(NullPointerException.class, () -> {
			Users user1 = new Users();

			user1 = userDao.create(user1);
		});

	}

	@After
	public static void tearDownClass() throws Exception {
		entityManager.close();
		entityManagerFactory.close();
	}
}
