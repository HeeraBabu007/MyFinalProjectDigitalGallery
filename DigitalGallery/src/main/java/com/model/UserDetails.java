package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

@Entity
public class UserDetails {
	
@Id
@GeneratedValue(strategy=GenerationType.AUTO)
	private int Rid;
	
	@Transient
	private String password;
	@Column(unique = true)
	private String Username;
	@Column
	private String emailid;
	@Column
	private String Address;	
	@Column
	private String Mobile;
	
	public UserDetails()
	{}
//generate setter and getter
	

}
