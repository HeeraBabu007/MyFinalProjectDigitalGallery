package com.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.google.gson.Gson;
import com.model.ProductAdmin;
@Repository
public class ProductAdminDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public ProductAdminDao()
	{}

	
	public void insert(ProductAdmin product) {
		Session session =sessionFactory.openSession();
		//session.save(category);
		System.out.println("Insert Method Called for Product");
		Transaction tx=session.getTransaction();
		tx.begin();
		session.save(product);
		tx.commit();
		session.close();

}

	public String Retrive()
	{
	Session connection=sessionFactory.openSession();
	Transaction tx=connection.getTransaction();
	tx.begin();

	 List listdata = connection.createQuery("FROM ProductAdmin").list();
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
		ProductAdmin ob=(ProductAdmin)session.get(ProductAdmin.class, cid);
		System.out.println("This is ID"+ " "+ob.getProductname());
		session.delete(ob);
		session.flush();
		tx.commit();
		session.close();
		System.out.println("Delete Method Called");
}
	public ProductAdmin UpdateProduct(Integer cid) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		ProductAdmin ob=(ProductAdmin)session.get(ProductAdmin.class, cid);
		tx.commit();
		session.close();
		return ob;
	}
	public void NowUpdateProduct(int cid,String cname,int cprize,int cstock,String cdesc) {
		Session session =sessionFactory.openSession();
		Transaction tx=session.getTransaction();
		tx.begin();
		ProductAdmin ob=(ProductAdmin)session.get(ProductAdmin.class, cid);
		ob.setProductname(cname);
		ob.setPrize(cprize);
        ob.setStock(cstock);
       ob.setDiscrption(cdesc);
		session.update(ob);
		tx.commit();
		session.close();
		System.out.println("Update Method Called");
	
	}
	
	//For Display Click big images
	public ProductAdmin DisplayImage(int ccid)
	{
	Session session=sessionFactory.openSession();
	session.beginTransaction();
	ProductAdmin ok=(ProductAdmin)session.get(ProductAdmin.class,ccid);
	session.close();
	return ok;
		
		
	}
	
}