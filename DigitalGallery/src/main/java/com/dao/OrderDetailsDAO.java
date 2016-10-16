package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.AddCart;
import com.model.OrderDetails;

@Repository
public class OrderDetailsDAO {
	
	@Autowired
	 SessionFactory sessionFactory;
	public void addOrderDetails(OrderDetails od)
	{
		Session session= sessionFactory.openSession();
		
		session.beginTransaction();
		session.save(od);
		session.getTransaction().commit();

		session.close();

	}
	public String getOrderDetail(int oId)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
	    OrderDetails ru=( OrderDetails)session.get(OrderDetails.class,oId);
		session.getTransaction().commit();
		Gson g = new Gson();
	    String data = g.toJson(ru);
		session.close();
	   return data;

	
}}