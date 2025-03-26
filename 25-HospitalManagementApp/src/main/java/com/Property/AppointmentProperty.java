package com.Property;

public class AppointmentProperty {
private int id;
private int user_Id;
private String FullName;
private String gender;
private String age;
private  String appoint_date;
private String email;
private String Phone;
private String diseases;
private int doc_Id;
private String address;
private String status;
public AppointmentProperty(int user_Id, String fullName, String gender, String age, String appoint_date, String email,
		String phone, String diseases, int doc_Id, String address, String status) {
	super();
	this.user_Id = user_Id;
	FullName = fullName;
	this.gender = gender;
	this.age = age;
	this.appoint_date = appoint_date;
	this.email = email;
	Phone = phone;
	this.diseases = diseases;
	this.doc_Id = doc_Id;
	this.address = address;
	this.status = status;
}

public AppointmentProperty() {
	super();
	// TODO Auto-generated constructor stub
}

public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getUser_Id() {
	return user_Id;
}
public void setUser_Id(int user_Id) {
	this.user_Id = user_Id;
}
public String getFullName() {
	return FullName;
}
public void setFullName(String fullName) {
	FullName = fullName;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getAge() {
	return age;
}
public void setAge(String age) {
	this.age = age;
}
public String getAppoint_date() {
	return appoint_date;
}
public void setAppoint_date(String appoint_date) {
	this.appoint_date = appoint_date;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getPhone() {
	return Phone;
}
public void setPhone(String phone) {
	Phone = phone;
}
public String getDiseases() {
	return diseases;
}
public void setDiseases(String diseases) {
	this.diseases = diseases;
}
public int getDoc_Id() {
	return doc_Id;
}
public void setDoc_Id(int doc_Id) {
	this.doc_Id = doc_Id;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}




}
