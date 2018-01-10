package com.atechlab.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {

	// controller method to show the initial form
	@RequestMapping("/showform")
	public String showForm() {
		return "helloworld-form";
	}

	// controller to process the html form.
	@RequestMapping("/processform")
	public String processForm() {
		return "helloworld";
	}
	/*@RequestMapping("/convertintouppercase")
	public String doWork(HttpServletRequest request, Model model) {
		// reading the req parameter from the HTML form.
		String theName = request.getParameter("studentName");
		// converting them into all caps.
		theName=theName.toUpperCase();
		//create the message.
		String result = "Hi! " + theName;
		// Add message to the model
		model.addAttribute("message",result);
		return "helloworld";
	}
	 */
	@RequestMapping("/convertintouppercase")
	public String doWork(@RequestParam("studentName") String theName, Model model) {
		// reading the req parameter from the HTML form.
		//String theName = request.getParameter("studentName");
		// converting them into all caps.
		theName=theName.toUpperCase();
		//create the message.
		String result = "Hi! " + theName;
		// Add message to the model
		model.addAttribute("message",result);
		return "helloworld";
	}	
}
