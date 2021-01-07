import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.bookstore.entity.Users;

public class UsersTest {

	public static void main(String[] args) {
		// create User Object
		Users user1 = new Users();
		user1.setEmail("test@testmail.com");
		user1.setFullName("Muhammad Ahmed");
		user1.setPassword("testPassword");
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		entityManager.getTransaction().begin();
		entityManager.persist(user1);
		entityManager.getTransaction().commit();
//		entityManager.close();
//		entityManagerFactory.close();
        //output
		System.out.println("User1 was inserted successfully");
	}

}
