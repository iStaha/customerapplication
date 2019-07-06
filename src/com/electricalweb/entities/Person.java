package com.electricalweb.entities;

import java.util.List;

import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;


public class Person {

    @NotEmpty(message = "First Name can not be empty")
    @Size(min = 2, max = 20, message = "First Name length must be between 2 and 20")
    private String firstName;

    @NotEmpty(message = "Last Name can not be empty")
    @Size(min = 2, max = 20, message = "Last Name length must be between 2 and 20")
    private String lastName;

    @Email
    private String email;

    
    
    
	public Person(String firstName, String lastName, String email) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
	}




	@Override
	public String toString() {
		return "Person [firstName=" + firstName + ", lastName=" + lastName + ", nickNames="  + ", email="
				+ email + ", password=" + "]";
	}

   
    
    
    
    
}