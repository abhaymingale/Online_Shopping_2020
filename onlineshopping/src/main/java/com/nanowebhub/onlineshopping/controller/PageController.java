package com.nanowebhub.onlineshopping.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.nanowebhub.shoppingbackend.dao.CategoryDAO;





@Controller
public class PageController {
	
	@Autowired
    private CategoryDAO categoryDAO;
	
	
	
	@RequestMapping(value = {"/home","/","/index"})
	public ModelAndView index() {
		
		ModelAndView mv = new ModelAndView("page");
	    mv.addObject("CategoryList",categoryDAO.list());
		mv.addObject("title", "Home Page");
		mv.addObject("UserCheckHomePage", true);
		
		
		return mv;
	}
	
	@RequestMapping(value = "/aboutus")
	public ModelAndView aboutus() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "About Us");
		mv.addObject("UserCheckAbout", true);
		
		return mv;
	}
	
	@RequestMapping(value = "/listproducts")
	public ModelAndView allproductlist() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "All Products");
		mv.addObject("UserCheckAllProducts", true);
		
		return mv;
	}
	
	@RequestMapping(value = "/contact")
	public ModelAndView contact() {
		ModelAndView mv = new ModelAndView("page");
		
		mv.addObject("title", "Contact Page");
		mv.addObject("UserCheckContact", true);
		
		return mv;
	}
	
	
}
