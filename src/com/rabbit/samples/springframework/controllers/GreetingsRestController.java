package com.rabbit.samples.springframework.controllers;
 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

// TODO to be configured in DispatcherServlet
@RestController
@RequestMapping("/api")
public class GreetingsRestController {

	@GetMapping
	public String greet() {
 
		return "Hello! Welcome to the Spring Framework sample project";
	}

}
