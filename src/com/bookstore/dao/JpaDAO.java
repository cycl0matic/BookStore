package com.bookstore.dao;

import javax.persistence.EntityManager;

public class JpaDAO<T> {

	protected EntityManager entityManger;

	public JpaDAO(EntityManager entityManger) {
		super();
		this.entityManger = entityManger;
	}

	public T create(T t) {
		entityManger.getTransaction().begin();
		entityManger.persist(t);
		entityManger.flush();
		entityManger.refresh(t);
		entityManger.getTransaction().commit();
		return t;
	}

}
