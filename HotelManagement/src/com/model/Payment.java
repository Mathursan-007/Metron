package com.model;

public class Payment {
   private int id;
   private int tid;
  private String customerName;
   private String pmethod;
   private String ttype;
   private float amount;
  
 

 

   public int getId() {
       return id;
   }

   public void setId(int id) {
       this.id = id;
   }


   public int getTid() {
       return tid;
   }

   public void setTid(int tid) {
       this.tid = tid;
   }
   public String getCustomerName() {
       return customerName;
   }

   public void setCustomerName(String customerName) {
       this.customerName =customerName;
   }

   public String getPmethod() {
       return pmethod;
   }

   public void setPmethod(String pmethod) {
       this.pmethod =pmethod;
   }

public String getTtype() {
return ttype;
}
public void setTtype(String ttype) {
this.ttype=ttype;
}
public float getAmount() {
    return amount;
}

public void setAmount(float amount) {
    this.amount =amount;
}

}




