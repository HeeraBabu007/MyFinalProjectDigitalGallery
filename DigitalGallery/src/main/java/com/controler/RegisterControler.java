package com.controler;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.model.Register;


@Controller
public class RegisterControler {
	
	public RegisterControler()
	{}

@RequestMapping(value ="/Registraion",method=RequestMethod.GET)
public String showRegistraion(@ModelAttribute("registraion")Register register)	
{
return "Registraion";

}

}