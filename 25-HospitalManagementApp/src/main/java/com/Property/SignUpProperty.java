package com.Property;

public class SignUpProperty {
	private int Id;
	
	private String fullNameSingUp;
	private String emailSingUp;
	private String userNameSingUp;
	private String userNamePassword;
	private String citySingUp;
	private  String selectSingUp;
	private  int zipSingUp;
	
//	constructor  feilds to get rid of set details
	
	
	
//	default constructor for creating the new object of the Admin
	public SignUpProperty() {
		super();
		// TODO Auto-generated constructor stub
	}

public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getFullNameSingUp() {
		return fullNameSingUp;
	}

	public void setFullNameSingUp(String fullNameSingUp) {
		this.fullNameSingUp = fullNameSingUp;
	}

	public String getEmailSingUp() {
		return emailSingUp;
	}

	public void setEmailSingUp(String emailSingUp) {
		this.emailSingUp = emailSingUp;
	}

	public String getUserNameSingUp() {
		return userNameSingUp;
	}

	public void setUserNameSingUp(String userNameSingUp) {
		this.userNameSingUp = userNameSingUp;
	}

	public String getUserNamePassword() {
		return userNamePassword;
	}

	public void setUserNamePassword(String userNamePassword) {
		this.userNamePassword = userNamePassword;
	}

	public String getCitySingUp() {
		return citySingUp;
	}

	public void setCitySingUp(String citySingUp) {
		this.citySingUp = citySingUp;
	}

	public String getSelectSingUp() {
		return selectSingUp;
	}

	public void setSelectSingUp(String selectSingUp) {
		this.selectSingUp = selectSingUp;
	}

	public int getZipSingUp() {
		return zipSingUp;
	}

	public void setZipSingUp(int zipSingUp) {
		this.zipSingUp = zipSingUp;
	}

public SignUpProperty(String fullNameSingUp, String emailSingUp, String userNameSingUp, String userNamePassword,
		String citySingUp, String selectSingUp, int zipSingUp) {
	super();
	this.fullNameSingUp = fullNameSingUp;
	this.emailSingUp = emailSingUp;
	this.userNameSingUp = userNameSingUp;
	this.userNamePassword = userNamePassword;
	this.citySingUp = citySingUp;
	this.selectSingUp = selectSingUp;
	this.zipSingUp = zipSingUp;
}

@Override
public String toString() {
	return "SignUpProperty [Id=" + Id + ", fullNameSingUp=" + fullNameSingUp + ", emailSingUp=" + emailSingUp
			+ ", userNameSingUp=" + userNameSingUp + ", userNamePassword=" + userNamePassword + ", citySingUp="
			+ citySingUp + ", selectSingUp=" + selectSingUp + ", zipSingUp=" + zipSingUp + "]";
}

	


	
//	getter setter method
	
}
