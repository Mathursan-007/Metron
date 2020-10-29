package com.model;

public class Supplier {

	private String Supplier_ID;

	private String Name;

	private String Type;

	private String Contact_No;

	private String Email;

	private String Address;




	public String getSupplier_ID() {
		return Supplier_ID;
	}



	public void setSupplier_ID(String supplier_ID) {
	Supplier_ID = supplier_ID;
	}



	public String getName() {
	return Name;
	}



	public void setName(String name) {
	Name = name;
	}



	public String getType() {
		return Type;
	}



	public void setType(String type) {
	Type = type;
	}



	public String getContact_No() {
		return Contact_No;
	}



	public void setContact_No(String contact_No) {
	Contact_No = contact_No;
	}

	public String getEmail() {
		return Email;
	}



	public void setEmail(String email) {
	Email = email;
	}

	public String getAddress() {
		return Address;
	}



	public void setAddress(String address) {
	Address = address;
	}



@Override
public String toString() {

return "Supplier_ID = " + Supplier_ID + "\n" + "Name = " + Name + "\n"
+ "Type = " + Type + "\n" + "Contact_No = " + Contact_No + "\n" + "Email = " + Email + "\n" + "Address = " + Address; 
}





}
