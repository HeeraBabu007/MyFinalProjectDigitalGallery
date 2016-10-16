package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;
import javax.servlet.*;

import com.google.gson.Gson;
import com.model.Category;;

@Repository
public class CategoryDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	public void insert(Category category) {
		Session session =sessionFactory.openSession();
		//session.save(category);
		System.out.println("Insert Method Called");
		Transaction tx=session.getTransaction();
		tx.begin();
		session.save(category);
		tx.commit();
		session.close();
}
	public String Retrive()
	{
		Session connection=sessionFactory.openSession();
		Transaction tx=connection.getTransaction();
		tx.begin();
	
		 List listdata = connection.createQuery("FROM Category").list();
		 Gson gson = new Gson();
		 String jsonNames = gson.toJson(listdata);
		 tx.commit();
		 connection.close();
	     return jsonNames;

	}
	

	public void Delete(Integer cid) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Category ob=(Category)session.get(Category.class, cid);
		session.delete(ob);
		tx.commit();
		session.close();
		System.out.println("Delete Method Called");
}
	
	public Category UpdateCategory(Integer cid) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Category ob=(Category)session.get(Category.class, cid);
		tx.commit();
		session.close();
		return ob;
	}
	public void NowUpdateCategory(int cid,String cname,String cdesc) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Category ob=(Category)session.get(Category.class, cid);
		ob.setCategoryName(cname);
		ob.setCategoryDiscription(cdesc);
		session.update(ob);
		tx.commit();
		session.close();
		System.out.println("Update Method Called");
	
	}
	
	
	

	
	






}