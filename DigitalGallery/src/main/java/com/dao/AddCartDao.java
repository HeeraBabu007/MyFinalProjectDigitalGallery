package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.google.gson.Gson;
import com.model.AddCart;
import com.model.ProductAdmin;
@Repository
public class AddCartDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	public String showCardDetails(AddCart accard) {
		Session session =sessionFactory.openSession();
		//session.save(category);
		System.out.println("Insert Method Called for Addcard");
		Transaction tx=session.getTransaction();
		tx.begin();
		session.save(accard);
		tx.commit();
	Gson okk=new Gson();
	String cartDe=okk.toJson(accard);
	session.close();
return cartDe;

}
	public void Delete(Integer cartid)
	{
		Session session= sessionFactory.openSession();
		
		session.beginTransaction();
		
		AddCart cd=(AddCart)session.get(AddCart.class,cartid);
		session.delete(cd);
		session.getTransaction().commit();
		session.close();
	
	}
	
}
