package com.atechlab.springmvc;

import javax.validation.Valid;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	// adding a initbinder to trim the whitespace.
	// remove leading and trailing whitespace.
	// resolves issue for our validation.
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder){
		
	StringTrimmerEditor trim = new StringTrimmerEditor(true);	
	dataBinder.registerCustomEditor(String.class, trim);
	}
	
	
	@RequestMapping("/showform")
	public String showForm(Model theModel){
		theModel.addAttribute("customer", new Customer());
		return "customer-form";
	}

	@RequestMapping("/processform")
	public String processForm(@Valid @ModelAttribute("customer") Customer theCustomer,
			BindingResult theBindingResult){
		System.out.println("Last Name" + "|" +theCustomer.getLastName()+"|");
		if(theBindingResult.hasErrors())
			return "customer-form";
		
				return "customer-confirmation";
	}
}
