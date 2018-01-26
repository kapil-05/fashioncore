package com.charliebrown.profiles;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;

@Entity
public class Profiles {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	int id;
	
	private String username;
	private String email;
	private String password;
	@Transient
	private String cnfrmpassword;
	private String phone;
	private String address;
	private boolean active = true;
	private String role = "ROLE_USER";
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Pattern(regexp="^[a-zA-Z0-9_]{5,20}$",message="Invalid Username")
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	@Pattern(regexp="^[a-zA-Z0-9]{2,20}@[a-zA-Z]{2,20}\\.[a-zA-Z]{2,20}(\\.[a-zA-Z]{2,20}){0,1}$", message="Invalid Email Address")
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Pattern(regexp="^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[$@!%*?&])[a-zA-Z\\d$@!%*?&]{8,20}$",  message="Password as per policy")
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getCnfrmpassword() {
		return cnfrmpassword;
	}
	public void setCnfrmpassword(String cnfrmpassword) {
		this.cnfrmpassword = cnfrmpassword;
	}
	
	@Pattern(regexp="^[789]{1}[0-9]{9}$", message="Invalid Phone Number")
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Pattern(regexp="^[A-Za-z\\d$@!%&*?_]{5,}$", message="Invalid Address")
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	public Profiles() {
	}

}
