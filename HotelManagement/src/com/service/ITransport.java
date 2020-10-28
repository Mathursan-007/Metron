package com.service;

import java.util.ArrayList;

import com.model.CarRental;
import com.model.Driver;
import com.model.Package;
import com.model.Payment;
import com.model.Vehicle;
import com.model.cityTour;

public interface ITransport {
 
public void insertcityTour(cityTour city);

public ArrayList<cityTour> listcityTours();

public cityTour GetcityTour(int id);

public void UpdatecityTour(cityTour city);

public void DeletecityTour(int id);
public void updateDriver(int id);
public void updateVehicle(int id) ;
public String changeName(int id);

public String changeVehicleName(int id);

//Payment
public void insertPayment(Payment payment );

public ArrayList<Payment> listPayments();

public Payment GetPayment(int id);

public void UpdatePayment(Payment payment );

public void DeletePayment(int id);

public Payment getPayment(int id);

//driver

public void insertDriver(Driver driver );

public ArrayList<Driver> listDrivers();

public ArrayList<Driver> listDriversByAvail();



public Driver GetDriver(int id);

public void UpdateDriver(Driver driver);

public void DeleteDriver(int id);


//vehicle


public void insertVehicle(Vehicle vehicle);

public ArrayList<Vehicle> listVehicles();

public Vehicle GetVehicle(int id);

public void UpdateVehicle(Vehicle vehicle);

public void DeleteVehicle(int id);
public ArrayList<Vehicle> listVehcileByAvail();

//Package

public void insertPackage(Package packages );

public ArrayList<Package> listPackages();

public Package GetPackage(String id);

public void UpdatePackage(Package packages);

public void DeletePackage(String id);

public Package getPackage(String id);

//Car Rental


public void insertCarRental(CarRental carRental );

public ArrayList<CarRental> listCarRentals();


public CarRental GetCarRental(int id);

public void UpdateCarRental(CarRental carRental);

public void DeleteCarRental(int id);





}


