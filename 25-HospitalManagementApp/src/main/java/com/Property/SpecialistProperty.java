package com.Property;

public class SpecialistProperty {
private int Id;
private String specFullName;


//parameterized constructor
public SpecialistProperty(int id, String specFullName) {
	super();
	Id = id;
	this.specFullName = specFullName;
}


 

//default constructor
public SpecialistProperty() {
	super();
	// TODO Auto-generated constructor stub
}

//getter setter
public int getId() {
	return Id;
}


public void setId(int id) {
	Id = id;
}


public String getSpecFullName() {
	return specFullName;
}


public void setSpecFullName(String specFullName) {
	this.specFullName = specFullName;
}




@Override
public String toString() {
	return "SpecialistProperty [Id=" + Id + ", specFullName=" + specFullName + "]";
}


//string methods




}
