package com.service;

import java.util.ArrayList;
import com.model.CarRental;

public interface ICarRental {

public void insertCarRental(CarRental carRental );

public ArrayList<CarRental> listCarRentals();

public CarRental GetCarRental(int id);

public void UpdateCarRental(CarRental carRental);

public void DeleteCarRental(int id);

}

