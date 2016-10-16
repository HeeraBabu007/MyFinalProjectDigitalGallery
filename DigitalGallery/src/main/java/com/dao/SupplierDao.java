package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.google.gson.Gson;
import com.model.Supplier;

@Repository
public class SupplierDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	public SupplierDao()
	{}
	
	public void insert(Supplier supplier) {
		Session session =sessionFactory.openSession();
		//session.save(supplier);
		System.out.println("Insert Method Called for Supplier");
		Transaction tx=session.getTransaction();
		tx.begin();
		session.save(supplier);
		tx.commit();
		session.close();
}
	public String Retrive()
	{
		Session connection=sessionFactory.openSession();
		Transaction tx=connection.getTransaction();
		tx.begin();
	
		 List listdata = connection.createQuery("FROM Supplier").list();
		 Gson gson = new Gson();
		 String jsonNames = gson.toJson(listdata);
		 tx.commit();
		 connection.close();
	     return jsonNames;

	}
	

	public void Delete(int cid) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Supplier ob=(Supplier)session.get(Supplier.class, cid);
		session.delete(ob);
		tx.commit();
		session.close();
		System.out.println("Delete Method Called");
}
	
	public Supplier UpdateSupplier(Integer cid) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Supplier ob=(Supplier)session.get(Supplier.class, cid);
		tx.commit();
		session.close();
		return ob;
	}
	public void NowUpdateCSupplier(int cid,String cname,String cdesc,String addrss) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		Supplier ob=(Supplier)session.get(Supplier.class, cid);
		ob.setSuppliername(cname);
		ob.setSupplieraddress(cdesc);
                ob.setSuppliermobile(addrss);
		session.update(ob);
		tx.commit();
		session.close();
		System.out.println("Update Method Called");
	
	}
	

}