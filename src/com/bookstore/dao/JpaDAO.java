package com.bookstore.dao;

import javax.persistence.EntityManager;

public class JpaDAO<E> {

	protected EntityManager entityManger;

	public JpaDAO(EntityManager entityManger) {
		super();
		this.entityManger = entityManger;
	}

	public E create(E entity) {
		entityManger.getTransaction().begin();
		entityManger.persist(entity);
		entityManger.flush();
		entityManger.refresh(entity);
		entityManger.getTransaction().commit();
		return entity;
	}
	
	public E update(E entity) {
		entityManger.getTransaction().begin();
		entityManger.merge(entity);
		entityManger.getTransaction().commit();
		return entity;
	}

}
