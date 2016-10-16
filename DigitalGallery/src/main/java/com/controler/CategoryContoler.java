package com.controler;

import java.util.List;

import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.*;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.dao.CategoryDao;
import com.model.Category;

import javax.servlet.http.*;
@Controller
public class CategoryContoler 
{
	@Autowired
	CategoryDao cdao;
	
	public CategoryContoler()
	{
		
	}
	

	@RequestMapping(value ="/category",method=RequestMethod.GET)
	public ModelAndView showCategory() 
	{	
		
		ModelAndView mvc=new ModelAndView("CategoryView","category",new Category());
		String categeries=cdao.Retrive();
		mvc.addObject("mylist",categeries);
		return mvc;
	}
	
	@RequestMapping(value="/Insertcategory", method=RequestMethod.POST)
	public ModelAndView addCategory(Category category, Model m) 
	{
		
		ModelAndView m1=new ModelAndView("CategoryView","category",new Category());
		System.out.println(category.getCategoryId());
		cdao.insert(category);
		boolean data=false;
		String categeries=cdao.Retrive();
		m1.addObject("checkk",data);
		m1.addObject("mylist",categeries);
		return m1;
	}
	@RequestMapping(value="/Deletecategory", method=RequestMethod.GET)
	public ModelAndView DeleteCategory(@RequestParam("pid")int cid)
	{
	
		cdao.Delete(cid);
		ModelAndView mvc=new ModelAndView("CategoryView","category",new Category());
		String categeries=cdao.Retrive();
		mvc.addObject("mylist",categeries);
		return mvc;
	}
	
	@RequestMapping(value="/plzUpdatedcategory", method=RequestMethod.GET)
	public ModelAndView plzUpdatedCategory(@RequestParam("pid")int cid)
	{
		Category cat=cdao.UpdateCategory(cid);
        boolean data=true;
		ModelAndView mvc=new ModelAndView("CategoryView","category",cat);
		String categeries=cdao.Retrive();
		mvc.addObject("mylist",categeries);
		mvc.addObject("checkk",data);
	   return mvc;
	}
	@RequestMapping(value="/plzNowUpdatedcategory", method=RequestMethod.POST)
	public ModelAndView plzNowUpdatedCategory(@ModelAttribute("category")Category category,HttpServletRequest request)
	{
		
		String cid=request.getParameter("categoryId");
		String cname=request.getParameter("categoryName");
		String cdesc=request.getParameter("categoryDiscription");
		boolean data=false;
		int cid1=Integer.parseInt(cid);
		cdao.NowUpdateCategory(cid1, cname, cdesc);
		ModelAndView mvc=new ModelAndView("CategoryView","category",new Category());
		String categeries=cdao.Retrive();
		mvc.addObject("mylist",categeries);
		mvc.addObject("checkk",data);
	   return mvc;
	}
}