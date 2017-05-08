package com.model;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class UserCredentials {

@Column
private String password;
@Column
private String role;
@Column
private boolean enabled;
@Id
private String username;


//generate setter and getter
	
}
