package com.Property;

public class DoctorProperty {
private int Id;
private String fullName;
private String DOB;
private String qualifications;
private String specialist;
private String email;
private String mobileNo;
private String password;


//default constructor
public DoctorProperty() {
	super();
	// TODO Auto-generated constructor stub
}
//parameterized constructor
public DoctorProperty(String fullName, String dOB, String qualifications, String specialist, String email,
		String mobileNo, String password) {
	super();
	this.fullName = fullName;
	DOB = dOB;
	this.qualifications = qualifications;
	this.specialist = specialist;
	this.email = email;
	this.mobileNo = mobileNo;
	this.password = password;
}


//setter and getter

public int getId() {
	return Id;
}
public void setId(int id) {
	Id = id;
}
public String getFullName() {
	return fullName;
}
public void setFullName(String fullName) {
	this.fullName = fullName;
}
public String getDOB() {
	return DOB;
}
public void setDOB(String dOB) {
	DOB = dOB;
}
public String getQualifications() {
	return qualifications;
}
public void setQualifications(String qualifications) {
	this.qualifications = qualifications;
}
public String getSpecialist() {
	return specialist;
}
public void setSpecialist(String specialist) {
	this.specialist = specialist;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMobileNo() {
	return mobileNo;
}
public void setMobileNo(String mobileNo) {
	this.mobileNo = mobileNo;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}


// strings

@Override
public String toString() {
	return "DoctorProperty [Id=" + Id + ", fullName=" + fullName + ", DOB=" + DOB + ", qualifications=" + qualifications
			+ ", specialist=" + specialist + ", email=" + email + ", mobileNo=" + mobileNo + ", password=" + password
			+ "]";
}
public DoctorProperty(int id, String fullName, String dOB, String qualifications, String specialist, String email,
		String mobileNo, String password) {
	super();
	Id = id;
	this.fullName = fullName;
	DOB = dOB;
	this.qualifications = qualifications;
	this.specialist = specialist;
	this.email = email;
	this.mobileNo = mobileNo;
	this.password = password;
}
public DoctorProperty(int id, String fullName, String dOB, String qualifications, String specialist, String email,
		String mobileNo) {
	super();
	Id = id;
	this.fullName = fullName;
	DOB = dOB;
	this.qualifications = qualifications;
	this.specialist = specialist;
	this.email = email;
	this.mobileNo = mobileNo;
}

//update paramterized constructor


















}
