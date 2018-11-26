package com.rabbit.samples.springframework.controllers;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class GreetingsController {

	/*
		This method returns ModelAndView object. 
		The ModelAndView object tries to resolve to a view named “welcome” and the data model is being passed back to 
		the browser so we can access the data within the JSP. The logical view name will resolve to /WEB-INF/jsp/welcome.jsp . 
		Logical name “welcome” which is return in ModelAndView object is mapped to path /WEB-INF/jsp/welcome.jsp.
	*/
	@RequestMapping("/welcome")
	public ModelAndView welcomePage() {
 
		String message = 
			"<br>"
			+ "<br>"
			+ "<div class='center-text'>"
			+ "<h3>Hello!</h3>"
			+ "<p>"
			+ "Welcome to the Spring Framework sample project not using Spring Boot :)"
			+ "</p>"
			+ "</div>"
		;

		/*
			The ModelAndView object also contains a message with key “message” and Detailed value. This is the data that 
			we are passing to our view. Normally this will be a value object in form of java bean that will contain the 
			data to be displayed on our view. Here we are simply passing a string.
		*/
		return new ModelAndView("welcome", "message", message);
	}

}
