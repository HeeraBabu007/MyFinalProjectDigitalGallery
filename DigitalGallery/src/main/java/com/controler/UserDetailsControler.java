package com.controler;

import javax.persistence.Entity;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.model.UserCredentials;
import com.dao.UserdetailsDao;

import com.model.UserDetails;

@Controller
public class UserDetailsControler {
	
	@Autowired
	UserdetailsDao userdao;
	public UserDetailsControler()
	{}


	@RequestMapping(value ="/usershow",method=RequestMethod.GET)
	public ModelAndView showUserdetails() 
	{	
		
		ModelAndView mvc=new ModelAndView("UserDetailsView","userdetails",new UserDetails());
//		String categeries=cdao.Retrive();
//		mvc.addObject("mylist",categeries);
		return mvc;
	}

	@RequestMapping(value="/InsertcUser", method=RequestMethod.POST)
	public ModelAndView addUser(UserDetails userdetails) 
	{
		UserCredentials userCreden= new UserCredentials();
		ModelAndView m1=new ModelAndView("UserDetailsView","userdetails",new UserDetails());
		userCreden.setEnabled(true);
		userCreden.setPassword(userdetails.getPassword());
		
		userCreden.setRole("ROLE_ADMIN");
		userCreden.setUsername(userdetails.getUsername());
		userdao.insert(userdetails);
		userdao.insertcreden(userCreden);
		//boolean data=false;
	//String categeries=cdao.Retrive();
//		m1.addObject("checkk",data);
//		m1.addObject("mylist",categeries);
		return m1;
	}
}
