package com.dao;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.model.UserCredentials;
import com.model.UserDetails;

@Repository
public class UserdetailsDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void insert(UserDetails userdetails) {
		Session session =sessionFactory.openSession();
		
		System.out.println("Insert Method Called for UserDetails");
		Transaction tx=session.getTransaction();
		tx.begin();
		session.save(userdetails);
		session.flush();
		tx.commit();
		session.close();
}

	public void insertcreden(UserCredentials userCreden) {
		
          Session session =sessionFactory.openSession();
		
		System.out.println("Insert Method Called for UserCredentaials");
		Transaction tx=session.getTransaction();
		tx.begin();
		session.save(userCreden);
		session.flush();
		tx.commit();
		session.close();
	}
	public String address(String uname) {
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(UserDetails.class);
		String addr = ((UserDetails) cr.add(Restrictions.like("Username", uname)).list().get(0)).getAddress();
		session.close();
		return addr;

	}
	public String email(String uname) {
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(UserDetails.class);
		String email = ((UserDetails) cr.add(Restrictions.like("Username", uname)).list().get(0)).getEmailid();
		session.close();
		return email;

	}
	public String Mobile(String uname) {
		Session session = sessionFactory.openSession();
		Criteria cr = session.createCriteria(UserDetails.class);
		String mobile = ((UserDetails) cr.add(Restrictions.like("Username", uname)).list().get(0)).getMobile();
		session.close();
		return mobile;

	}
	public UserDetails display(String uname)
	{
		Session session = sessionFactory.openSession();
		System.out.println(uname);
		Criteria cr=session.createCriteria(UserDetails.class);
		UserDetails ru=(UserDetails)cr.add(Restrictions.like("Username",uname)).list().get(0);
		session.close();
		return ru;

}

}