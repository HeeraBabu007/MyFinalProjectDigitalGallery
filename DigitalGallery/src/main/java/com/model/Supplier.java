package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
@Entity
public class Supplier {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int supplierid;
	
	
	@Column
	private String suppliername;
	
	@Column
	private String supplieraddress;
	
	@Column
	private String suppliermobile;
	
	
	public Supplier()
	{}


	public int getSupplierid() {
		return supplierid;
	}


	public void setSupplierid(int supplierid) {
		this.supplierid = supplierid;
	}


	public String getSuppliername() {
		return suppliername;
	}


	public void setSuppliername(String suppliername) {
		this.suppliername = suppliername;
	}


	public String getSupplieraddress() {
		return supplieraddress;
	}


	public void setSupplieraddress(String supplieraddress) {
		this.supplieraddress = supplieraddress;
	}


	public String getSuppliermobile() {
		return suppliermobile;
	}


	public void setSuppliermobile(String suppliermobile) {
		this.suppliermobile = suppliermobile;
	}


		
}