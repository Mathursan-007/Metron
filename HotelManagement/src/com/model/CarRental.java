package com.model;

public class CarRental {
   private int id;
   private String customerName;
   private String roomNo;
   private int vehicle;
   private int driver;
   private String date;
   private String time;
   private float amount;
   private String destination;
   private int Nodays;
 

 

   public int getId() {
       return id;
   }

   public void setId(int id) {
       this.id = id;
   }

   public String getCustomerName() {
       return customerName;
   }

   public void setCustomerName(String customerName) {
       this.customerName = customerName;
   }

   public String getRoomNo() {
       return roomNo;
   }

   public void setRoomNo(String roomNo) {
       this.roomNo =roomNo ;
   }

   public int getVehicle() {
       return vehicle;
   }

   public void setVehicle(int vehicle) {
       this.vehicle = vehicle;
   }

   public int getDriver() {
       return driver;
   }

   public void setDriver(int driver) {
       this.driver = driver;
   }

   public String getDate() {
       return date;
   }

   public void setDate(String date) {
       this.date =date;
   }
   public String getTime() {
       return time;
   }

   public void setTime(String time) {
       this.time =time;
   }
   
   public float getAmount() {
return amount;
}

public void setAmount(float amount) {
this.amount=amount;
}

public String getDestination() {
return destination;
}
public void setDestination(String destination) {
this.destination=destination;
}

public int getNodays() {
    return Nodays;
   }
   public void setNodays(int Nodays) {
    this.Nodays=Nodays;
   }
}




