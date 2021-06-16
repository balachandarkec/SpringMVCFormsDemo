package in.stack.mvc.SpringForms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import in.stack.mvc.SpringForms.model.Customer;

@Controller
public class CustomerController {
	
	@GetMapping("/")
	public String homePage() {
		return "index";
	}
	
	
	@ModelAttribute("customer")
	public Customer setCustomerForm() {
		return new Customer();
		
	}
	
	@GetMapping("/register")
	public String showSignupform() {
		return "registration-form";
	}
	
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@ModelAttribute("customer") Customer customerData, Model model) {
		
		System.out.println("Name : "+ customerData.getFirstname()+ " , "+customerData.getLastname());
		
		model.addAttribute("user", customerData);
		model.addAttribute("msg", "Registration Success!");
		
		return "registration-success";
	}
	
	

}
