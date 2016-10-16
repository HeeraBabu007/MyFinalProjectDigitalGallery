package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;



@Entity
public class AddCart {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int cartID;
	
	@Column
	private int productid;
	
	@Column
	private int prize;
	
	@Column
	private int stock;
	@Column
	private String productname;
	@Column
	private int total;
	@Column
	private int qty=1;
	@Column
	private int orderID;


	
public AddCart()
{}



public int getCartID() {
	return cartID;
}



public void setCartID(int cartID) {
	this.cartID = cartID;
}



public int getProductid() {
	return productid;
}



public void setProductid(int productid) {
	this.productid = productid;
}



public int getPrize() {
	return prize;
}



public void setPrize(int prize) {
	this.prize = prize;
}



public int getStock() {
	return stock;
}



public void setStock(int stock) {
	this.stock = stock;
}



public String getProductname() {
	return productname;
}



public void setProductname(String productname) {
	this.productname = productname;
}



public int getTotal() {
	return total;
}



public void setTotal(int total) {
	this.total = total;
}



public int getQty() {
	return qty;
}



public void setQty(int qty) {
	this.qty = qty;
}



public int getOrderID() {
	return orderID;
}



public void setOrderID(int orderID) {
	this.orderID = orderID;
}


}