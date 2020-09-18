package com.model;

public class Utility {

private int Payment_ID;

private String Description;

private float Amount;

private String Date;




public int getPayment_ID() {
return Payment_ID;
}



public void setPayment_ID(int payment_ID) {
	Payment_ID = payment_ID;
}



public String getDescription() {
return Description;
}



public void setDescription(String description) {
	Description = description;
}



public float getAmount() {
return Amount;
}



public void setAmount(float amount) {
	Amount = amount;
}



public String getDate() {
return Date;
}



public void setDate(String date) {
	Date = date;
}




@Override
public String toString() {

return "Payment_ID = " + Payment_ID + "\n" + "Description = " + Description + "\n"
+ "Amount = " + Amount + "\n" + "Date = " + Date; 
}

}
