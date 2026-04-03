package com.entity;

public class User {
	private int id;
	private String fullName;
	private String email;
	private String password;
	private String phno;

	public User() {
		super();
	}

	public User(String fullName, String email, String password, String phno) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.phno = phno;
	}

	public User(int id, String fullName, String email, String password, String phno) {
		super();
		this.id = id;
		this.fullName = fullName;
		this.email = email;
		this.password = password;
		this.phno = phno;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhno() {
		return phno;
	}

	public void setPhno(String phno) {
		this.phno = phno;
	}
}
