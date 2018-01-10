package com.atechlab.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

	@RequestMapping("/showform")
	public String showForm(Model model){ 

		// create a student object.
		Student	thestudent  = new Student();
		model.addAttribute("student", thestudent);
		return "student-form";
	}
	@RequestMapping("/processform")
	public String processForm(@ModelAttribute("student") Student theStudent){
		System.out.println("Logging : " + theStudent);
		//log the input data
		System.out.println("theStudent: " + theStudent.getFirstName() + " " + theStudent.getLastName() );
		System.out.println("Country: " + theStudent.getCountry() );
		System.out.println("Fav. Language: " + theStudent.getFavoriteLanguage());

		return "student-confirmation";
	}


}
