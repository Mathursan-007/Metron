package com.service;

import java.util.ArrayList;


import com.model.Supplier;


public interface ISupplier {


public void AddSupplier(Supplier supplier);


public ArrayList<Supplier> listDetails();

public Supplier GetSupplier(String Supplier_ID);

public void UpdateSupplier(Supplier supplier);

public void DeleteSupplier(String Supplier_ID);


}
