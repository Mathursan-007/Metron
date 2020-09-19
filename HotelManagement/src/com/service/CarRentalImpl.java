package com.service;

import java.util.ArrayList;

import com.model.CarRental;
import com.util.DBConnection;

import java.sql.*;

public class CarRentalImpl implements ICarRental{

private static Connection connection;
private static PreparedStatement pt;
private static CallableStatement ct;
private static Statement st;

@Override
public void insertCarRental(CarRental carRental) {
// TODO Auto-generated method stub
try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into CarRental (ID,CusName,RoomNo,date,time,VehicleID,DriverID,NoOfDays,Destination,Amount) values(?,?,?,?,?,?,?,?,?,?)");
pt.setInt(1, carRental.getId());
pt.setString(2,carRental.getCustomerName());
pt.setString(3,carRental.getRoomNo());
pt.setString(4,carRental.getDate());
pt.setString(5,carRental.getTime());
pt.setInt(6,carRental.getVehicle());
pt.setInt(7,carRental.getDriver());
pt.setInt(8,carRental.getNodays());
pt.setString(9,carRental.getDestination());
pt.setFloat(10,carRental.getAmount());

pt.execute();

} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}

@Override
public ArrayList<CarRental> listCarRentals(){
//TODO  Auto-generated method stub

ArrayList<CarRental> CarRentals=new ArrayList<>();
try {
connection=DBConnection.initializedb();
ct=connection.prepareCall("SELECT ID,CusName,RoomNo,date,CAST(time AS TIME(0)),VehicleID,DriverID,NoofDays ,Destination,Amount from CarRental");
ResultSet result=ct.executeQuery();

while(result.next()) {
CarRental carRental = new CarRental();

carRental.setId(result.getInt(1));
carRental.setCustomerName(result.getString(2));
carRental.setRoomNo(result.getString(3));
carRental.setDate(result.getString(4));
carRental.setTime(result.getString(5));
carRental.setVehicle(result.getInt(6));
carRental.setDriver(result.getInt(7));
carRental.setNodays(result.getInt(8));
carRental.setDestination(result.getString(9));
carRental.setAmount(result.getFloat(10));
CarRentals.add(carRental);
}

} catch (Exception e) {

}

return CarRentals;
}


@Override
public void DeleteCarRental(int id) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("delete from CarRental where ID=?");
pt.setInt(1,id);
pt.execute();
} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}

}

@Override
public CarRental GetCarRental(int id) {
// TODO Auto-generated method stub

CarRental carRental=new CarRental();

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("select ID,CusName,RoomNo,date,CAST(time AS TIME(0)),VehicleID,DriverID,NoofDays ,Destination,Amount from CarRental where ID=?");
pt.setInt(1,id);
ResultSet result=pt.executeQuery();

while(result.next()){

carRental.setId(result.getInt(1));
carRental.setCustomerName(result.getString(2));
carRental.setRoomNo(result.getString(3));
carRental.setDate(result.getString(4));
carRental.setTime(result.getString(5));
carRental.setVehicle(result.getInt(6));
carRental.setDriver(result.getInt(7));
carRental.setNodays(result.getInt(8));
carRental.setDestination(result.getString(9));
carRental.setAmount(result.getFloat(10));

}


} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


return carRental;
}


@Override
public void UpdateCarRental(CarRental carRental) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("update CarRental set CusName=?,RoomNo=?,date=?,time=?,VehicleID=?,DriverID=?,NoofDays=?,Destination=?,Amount=? where ID=? ");

pt.setString(1, carRental.getCustomerName());
pt.setString(2, carRental.getRoomNo());
pt.setString(3, carRental.getDate());
pt.setString(4, carRental.getTime());
pt.setInt(5, carRental .getVehicle());
pt.setInt(6, carRental.getDriver());
pt.setInt(7, carRental.getNodays());
pt.setString(8, carRental.getDestination());
pt.setDouble(9, carRental.getAmount());
pt.setInt(10, carRental.getId());


pt.executeUpdate();

} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}




}

