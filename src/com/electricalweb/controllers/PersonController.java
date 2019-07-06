package com.electricalweb.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Validation;
import javax.validation.Validator;
import javax.validation.ValidatorFactory;

import java.util.ArrayList;
import java.util.Set;
import javax.validation.ConstraintViolation;

import com.electricalweb.entities.Person;

/**
 * Servlet implementation class PersonController
 */
@WebServlet("/person")
public class PersonController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PersonController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("person.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("POST");

		String fname = request.getParameter("firstname");
		String lname = request.getParameter("lastname");
		String email = request.getParameter("email");

		ArrayList<String> items = new ArrayList<String>();

	//	String[] item = request.getParameterValues("items");
	
	//	System.out.println("ITEM  " + item);
		
//		for(String v : item){
//			System.out.println("ITEM  " + v);
//		}

		Person person = new Person(fname, lname, email);

	  //System.out.println("PERSON  " + fname + " " + lname + " " + email);
		
		  ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
		  Validator validator = factory.getValidator(); 
		  Set<ConstraintViolation<Person>> violations = validator.validate(person);
		  
		  for (ConstraintViolation<Person> violation : violations) {
		  System.err.println(violation.getMessage()); }
		  
		  if (!violations.isEmpty()) { request.setAttribute("violations", violations);
		  }
		 

		request.getRequestDispatcher("person.jsp").forward(request, response);
	}

}
