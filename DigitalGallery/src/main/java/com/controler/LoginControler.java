package com.controler;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dao.ProductAdminDao;

import com.model.AddCart;

@Controller
public class LoginControler 
{
	@Autowired
	ProductAdminDao cdaao;
	public LoginControler()
	{}
	@RequestMapping("/AboutUs")
	public String showAboutUs() 
	{	
	System.out.println("Hiii");
	return "aboutUs";
	}
	@RequestMapping("/ContactUs")
	public String showContactUs() 
	{
	System.out.println("Hiii noo");
	return "contactUs";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping("/loginSuccessful")
	public String login_session_attributes(HttpSession session,Model model)
	{
		String username = SecurityContextHolder.getContext().getAuthentication().getName();
		
	
	

		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		String role="ROLE_USER";
		int size=0;
		
		System.out.println("Login :"+username);
		
		for (GrantedAuthority authority : authorities) 
		{
			if(authority.getAuthority().equals(role))
			{
				
				String mylist3=cdaao.Retrive();
				model.addAttribute("mylist3",mylist3);
				session.setAttribute("Userid", username);
		
				page="UserProductView";
				List<AddCart> ob = new ArrayList<AddCart>();
				session.setAttribute("UserLoggedIn",true);
				size=ob.size();
				session.setAttribute("mycart",ob);
				session.setAttribute("count",size);
				System.out.println("My Session	:"+session.getId());
		    }
			else 
		    {
			session.setAttribute("Administrator", "true");
			page="AdminLogin";
			}
		}
		return page;
		
	}
	
	
	@RequestMapping("/Login")
	public String showlogin() 
	{
	System.out.println("Hiii Login");
	return "Login";
	}
	@RequestMapping("/userproductview")
	public String show() 
	{
	System.out.println("Hiii Show");
	return "UserProductView";
	}
	
	@RequestMapping("/Admin")
	public String Admin() 
	{
	System.out.println("Hiii Admin");
	return "AdminHeader";
	}
	@RequestMapping("/Suplier")
	public String Supplier() 
	{
	System.out.println("Hiii Supplier");
	return "SupplierView";
	}
	@RequestMapping("/Products")
	public String pro() 
	{
	System.out.println("Hiii Supplier");
	return "ProductAdminView";
	}
	@RequestMapping(value = "/perform_logout")
	public String homelogout() 
	{
	return "Login";
	}
	
}
