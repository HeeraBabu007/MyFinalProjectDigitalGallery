package com.model;

import org.springframework.context.annotation.Configuration;




@Configuration
public class Register {
	

	private String FirstName;
	private String LastName;
	
    private String Email;
	
    private String City;
	private String Password;
  private String ConfirmPassword;
  private String Mobile;
  private String checkbox;
  private String State;
  private String Country;
  private String Pincode;
  private String PostalAddress;
  
  public Register()
  {}
public String getFirstName() {
	return FirstName;
}
public void setFirstName(String firstName) {
	FirstName = firstName;
}
public String getLastName() {
	return LastName;
}
public void setLastName(String lastName) {
	LastName = lastName;
}
public String getEmail() {
	return Email;
}
public void setEmail(String email) {
	Email = email;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getPassword() {
	return Password;
}
public void setPassword(String password) {
	Password = password;
}
public String getConfirmPassword() {
	return ConfirmPassword;
}
public void setConfirmPassword(String confirmPassword) {
	ConfirmPassword = confirmPassword;
}
public String getMobile() {
	return Mobile;
}
public void setMobile(String mobile) {
	Mobile = mobile;
}
public String getCheckbox() {
	return checkbox;
}
public void setCheckbox(String checkbox) {
	this.checkbox = checkbox;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getCountry() {
	return Country;
}
public void setCountry(String country) {
	Country = country;
}
public String getPincode() {
	return Pincode;
}
public void setPincode(String pincode) {
	Pincode = pincode;
}
public String getPostalAddress() {
	return PostalAddress;
}
public void setPostalAddress(String postalAddress) {
	PostalAddress = postalAddress;
}

}