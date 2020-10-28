package com.model;

public class Vehicle {
	
   private int id;
   private String modelNo;
   private String condition;
   private String feature;
   private String capacity;
   private String availability ;
  
 

 

   public int getId() {
       return id;
   }

   public void setId(int id) {
       this.id=id;
   }

   public String getModelNo() {
       return modelNo;
   }

   public void setModelNo(String modelNo ) {
       this.modelNo =modelNo;
   }

   public String getCondition() {
       return condition;
   }

   public void setCondition(String condition) {
       this.condition=condition;
   }
   public String getFeature() {
       return feature;
   }

   public void setFeature(String feature) {
       this.feature=feature;
   }
   public String getCapacity() {
       return capacity;
   }

   public void setCapacity(String capacity) {
       this.capacity=capacity;
   }

public String getAvailability() {
return availability;
}
public void setAvailability(String availability) {
this.availability=availability;
}

}
