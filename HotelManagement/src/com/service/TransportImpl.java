package com.service;

import java.util.ArrayList;
import com.model.CarRental;
import com.model.Driver;
import com.model.Package;
import com.model.Payment;
import com.model.Vehicle;
import com.model.cityTour;
import com.util.DBConnection;

import java.awt.List;
import java.sql.*;

public class TransportImpl implements ITransport{

private static Connection connection;
private static PreparedStatement pt;
private static CallableStatement ct;
private static Statement st;

@Override
public void insertcityTour(cityTour city) {
// TODO Auto-generated method stub
try {
	
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into city (ID,CusName,Package,NoPerson,Amount,Date,Time,Vehicle,Driver,RoomNo) values(?,?,?,?,?,?,?,?,?,?)");
System.out.println("parse 4");
pt.setInt(1, city.getId());
pt.setString(2,city.getCustomerName());
pt.setString(3,city.getPackage());
pt.setInt(4,city.getNoPerson());
pt.setFloat(5,city.getAmount());
pt.setString(6,city.getDate());
pt.setString(7, city.getTime());

pt.setInt(9,city.getDriver());
pt.setInt(8,city.getVehicle());




pt.setString(10,city.getRoomNo());

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
public ArrayList<cityTour> listcityTours(){
//TODO  Auto-generated method stub

ArrayList<cityTour> cityTours=new ArrayList<>();
try {

connection=DBConnection.initializedb();
PreparedStatement ct=connection.prepareStatement("select * from city");
ResultSet result=ct.executeQuery();

while(result.next()) {
	cityTour city = new cityTour();
	city.setId(result.getInt(1));
	city.setCustomerName(result.getString(2));
	city.setPackage(result.getString(3));
	city.setNoPerson(result.getInt(4));
	city.setAmount(result.getFloat(5));
	city.setDate(result.getString(6));
	city.setTime(result.getString(7));
	city.setVehicle(result.getInt(8));
	city.setDriver(result.getInt(9));
	
	city.setRoomNo(result.getString(10));
cityTours.add(city);
}
System.out.println("call 2");

} catch (Exception e) {
System.out.println(e);
}

return cityTours;
}


@Override
public void DeletecityTour(int id) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("delete from city where ID=?");
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
public cityTour GetcityTour(int id) {
// TODO Auto-generated method stub

	cityTour city=new cityTour();

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("select ID,CusName,Package,NoPerson,Amount,Date,CAST(Time AS TIME(0)),Vehicle,Driver,RoomNo from city where ID=?");
pt.setInt(1,id);
ResultSet result=pt.executeQuery();

while(result.next()){
	city.setId(result.getInt(1));
	city.setCustomerName(result.getString(2));
	city.setPackage(result.getString(3));
	city.setNoPerson(result.getInt(4));
	city.setAmount(result.getFloat(5));
	city.setDate(result.getString(6));
	city.setTime(result.getString(7));
	city.setVehicle(result.getInt(8));
	city.setDriver(result.getInt(9));
	
	city.setRoomNo(result.getString(10));
}


} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


return city;
}


@Override
public void UpdatecityTour(cityTour city) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("update city set CusName=?,Package=?,NoPerson=?,Amount=?,Date=?,Time=?,Vehicle=?,Driver=?,RoomNo=? where ID=? ");


pt.setString(1,city.getCustomerName());
pt.setString(2,city.getPackage());
pt.setInt(3,city.getNoPerson());
pt.setFloat(4,city.getAmount());
pt.setString(5,city.getDate());
pt.setString(6, city.getTime());
pt.setInt(7,city.getVehicle());
pt.setInt(8,city.getDriver());
pt.setString(9,city.getRoomNo());
pt.setInt(10, city.getId());

pt.executeUpdate();

} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}

public void updateDriver(int id) {
	try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("update driver set Availability=0 where ID=? ");
		pt.setInt(1, id);
		pt.executeUpdate();

		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	
}
@Override
public void updateVehicle(int id) {
	try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("update vehicle set Availability=0 where ID=? ");
		pt.setInt(1, id);
		pt.executeUpdate();

		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
	
}
public void insertPayment(Payment payment) {
	// TODO Auto-generated method stub
	try {
		
	connection=DBConnection.initializedb();
	pt=connection.prepareStatement("insert into payment (ID,TID,Ttype,CusName,Amount,Pmethod) values(?,?,?,?,?,?)");
	System.out.println("parse 4");
	pt.setInt(1, payment.getId());
	pt.setInt(2,payment.getTid());
	pt.setString(3,payment.getTtype());
	pt.setString(4,payment.getCustomerName());
	pt.setFloat(5,payment.getAmount());
	pt.setString(6,payment.getPmethod());


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
	public ArrayList<Payment> listPayments(){
	//TODO  Auto-generated method stub

	ArrayList<Payment> Payments=new ArrayList<>();
	try {

	connection=DBConnection.initializedb();
	PreparedStatement ct=connection.prepareStatement("select * from payment");
	ResultSet result=ct.executeQuery();

	while(result.next()) {
		Payment payment = new Payment();
		payment.setId(result.getInt(1));
		payment.setTid(result.getInt(2));
		payment.setTtype(result.getString(3));
		payment.setCustomerName(result.getString(4));
		payment.setAmount(result.getFloat(5));
		payment.setPmethod(result.getString(6));

	Payments.add(payment);
	}
	System.out.println("call 2");

	} catch (Exception e) {
	System.out.println(e);
	}

	return Payments;
	}


	@Override
	public void DeletePayment(int id) {
	// TODO Auto-generated method stub

	try {
	connection=DBConnection.initializedb();
	pt=connection.prepareStatement("delete from payment where ID=?");
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
	public Payment GetPayment(int id) {
	// TODO Auto-generated method stub

		Payment payment=new Payment();

	try {
	connection=DBConnection.initializedb();
	pt=connection.prepareStatement("select ID,TID,Ttype,CusName,Amount,Pmethod from payment where ID=?");
	pt.setInt(1,id);
	ResultSet result=pt.executeQuery();

	while(result.next()){
	    
		payment.setId((result.getInt(1)));
		payment.setTid((result.getInt(2)));
		payment.setTtype(result.getString(3));
		payment.setCustomerName(result.getString(4));
		payment.setAmount(result.getFloat(5));
		payment.setPmethod((result.getString(6)));


	}


	} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}


	return payment;
	}


	@Override
	public void UpdatePayment(Payment payment) {
	// TODO Auto-generated method stub

	try {
	connection=DBConnection.initializedb();
	pt=connection.prepareStatement("update payment set TID=?,Ttype=?,CusName=?,Amount=?,Pmethod=? where ID=? ");

		pt.setInt(1, payment.getTid());
	pt.setString(2,  payment.getTtype());
	pt.setString(3, payment.getCustomerName());
	pt.setFloat(4, payment.getAmount());
	pt.setString(5,payment.getPmethod());
	pt.setInt(6, payment.getId());
	



	pt.executeUpdate();

	} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	}

	@Override
	public Payment getPayment(int id) {
		Payment Payments = new Payment();
		try {

		connection=DBConnection.initializedb();
		PreparedStatement ct=connection.prepareStatement("select * from payment where 	ID=?");
		ct.setInt(1,id);
		ResultSet result=ct.executeQuery();

		while(result.next()) {
			Payment payment= new Payment();
			payment.setId((result.getInt(1)));
			payment.setTid((result.getInt(2)));
			payment.setTtype(result.getString(3));
			payment.setCustomerName(result.getString(4));
			payment.setAmount(Float.parseFloat(result.getString(5)));
			payment.setPmethod(result.getString(6));


		}
		

		} catch (Exception e) {
		System.out.println(e);
		}

		return Payments;
	}
	@Override
	public String changeName(int id) {
		String name = "No driver";
		Driver d=new Driver();
		try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from driver where ID=?");
		pt.setInt(1,id);
		ResultSet result=pt.executeQuery();
		if(result.next()) {
			d.setId(result.getInt(1));
			d.setDriverName(result.getString(2));
			
			d.setMobileNo(result.getString(3));
			d.setAvailability(result.getString(4));
			System.out.println("id:"+id+"  names:"+d.getDriverName());
			name=d.getDriverName();
		}
		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		
		return name;
	}
public String changeVehicleName(int id) {
		String name1 = "No vehile";
		System.out.println("id:"+id);
		Vehicle v=new Vehicle();
		

		try {
		connection=DBConnection.initializedb();
		pt=connection.prepareStatement("select * from vehicle where ID=?");
		pt.setInt(1,id);
		ResultSet result=pt.executeQuery();
		if(result.next()) {
			v.setId(result.getInt(1));
			v.setModelNo(result.getString(2));
			v.setCondition(result.getString(3));
			v.setFeature(result.getString(4));
			v.setCapacity(result.getString(5));
			v.setAvailability(result.getString(6));
			System.out.println("id:"+id+"  names:"+v.getModelNo());
			name1=v.getModelNo();
		}
		
		


		} catch (ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		}
		return name1;

		
	}
//Drivers implementations
@Override
public void insertDriver(Driver driver) {
// TODO Auto-generated method stub
try {
	
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into driver (ID,DriverName,MobileNo,Availability) values(?,?,?,?)");
System.out.println("parse 4");
pt.setInt(1, driver.getId());
pt.setString(2,driver.getDriverName());
pt.setString(3,driver.getMobileNo());
pt.setString(4,driver.getAvailability());


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
public ArrayList<Driver> listDrivers(){
//TODO  Auto-generated method stub

ArrayList<Driver> Drivers=new ArrayList<>();
try {

connection=DBConnection.initializedb();
PreparedStatement ct=connection.prepareStatement("select * from driver");
ResultSet result=ct.executeQuery();

while(result.next()) {
Driver driver = new Driver();
driver.setId(result.getInt(1));
driver.setDriverName(result.getString(2));
driver.setMobileNo(result.getString(3));
driver.setAvailability(result.getString(4));

Drivers.add(driver);
}
System.out.println("call 2");

} catch (Exception e) {
System.out.println(e);
}

return Drivers;
}


@Override
public void DeleteDriver(int id) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("delete from driver where ID=?");
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
public Driver GetDriver(int id) {
// TODO Auto-generated method stub

Driver driver=new Driver();

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("select ID,DriverName,MobileNo,Availability from driver where ID=?");
pt.setInt(1,id);
ResultSet result=pt.executeQuery();

while(result.next()){

driver.setId(result.getInt(1));
driver.setDriverName(result.getString(2));
driver.setMobileNo(result.getString(3));
driver.setAvailability(result.getString(4));


}


} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


return driver;
}


@Override
public void UpdateDriver(Driver driver) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("update driver set DriverName=?,MobileNo=?,Availability=? where ID=? ");

pt.setString(1, driver.getDriverName());
pt.setString(2, driver.getMobileNo());
pt.setString(3, driver.getAvailability());
pt.setInt(4, driver.getId());



pt.executeUpdate();

} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}

@Override
public ArrayList<Driver> listDriversByAvail() {
	ArrayList<Driver> Drivers=new ArrayList<>();
	try {

	connection=DBConnection.initializedb();
	PreparedStatement ct=connection.prepareStatement("select * from driver where Availability=1");
	ResultSet result=ct.executeQuery();
	
	while(result.next()) {
	Driver driver = new Driver();
	driver.setId(result.getInt(1));
	driver.setDriverName(result.getString(2));
	driver.setMobileNo(result.getString(3));
	driver.setAvailability(result.getString(4));

	Drivers.add(driver);
	}
	System.out.println("call 2");

	} catch (Exception e) {
	System.out.println(e);
	}

	return Drivers;
}


//vehicle
@Override
public void insertVehicle(Vehicle vehicle) {
// TODO Auto-generated method stub
try {
	
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into vehicle (ID,ModelNo,dCondition,Feature,Capacity,Availability) values(?,?,?,?,?,?)");
System.out.println("parse 4");
pt.setInt(1, vehicle.getId());
pt.setString(2,vehicle.getModelNo());
pt.setString(3,vehicle.getCondition());
pt.setString(4,vehicle.getFeature());
pt.setString(5,vehicle.getCapacity());
pt.setString(6,vehicle.getAvailability());


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
public ArrayList<Vehicle> listVehicles(){
//TODO  Auto-generated method stub

ArrayList<Vehicle> Vehicles=new ArrayList<>();
try {

connection=DBConnection.initializedb();
PreparedStatement ct=connection.prepareStatement("select * from vehicle");
ResultSet result=ct.executeQuery();

while(result.next()) {
	Vehicle vehicle = new Vehicle();
	vehicle.setId(result.getInt(1));
	vehicle.setModelNo(result.getString(2));
	vehicle.setCondition(result.getString(3));
	vehicle.setFeature(result.getString(4));
	vehicle.setCapacity(result.getString(5));
	vehicle.setAvailability(result.getString(6));

Vehicles.add(vehicle);
}
System.out.println("call 2");

} catch (Exception e) {
System.out.println(e);
}

return Vehicles;
}


@Override
public void DeleteVehicle(int id) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("delete from vehicle where ID=?");
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
public Vehicle GetVehicle(int id) {
// TODO Auto-generated method stub

Vehicle vehicle=new Vehicle ();

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("select ID,ModelNo,dCondition,Feature,Capacity,Availability from vehicle where ID=?");
pt.setInt(1,id);
ResultSet result=pt.executeQuery();

while(result.next()){

	vehicle.setId(result.getInt(1));
	vehicle.setModelNo(result.getString(2));
	vehicle.setCondition(result.getString(3));
	vehicle.setFeature(result.getString(4));
	vehicle.setCapacity(result.getString(5));
	vehicle.setAvailability(result.getString(6));


}


} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


return vehicle;
}


@Override
public void UpdateVehicle(Vehicle vehicle) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("update vehicle set ModelNo=?,dCondition=?,Feature=?,Capacity=?,Availability=? where ID=? ");

pt.setString(1, vehicle.getModelNo());

pt.setString(2, vehicle.getCondition());
pt.setString(3, vehicle.getFeature());
pt.setString(4, vehicle.getCapacity());
pt.setString(5,vehicle.getAvailability());
pt.setInt(6, vehicle.getId());



pt.executeUpdate();

} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}


@Override
public ArrayList<Vehicle> listVehcileByAvail() {
	ArrayList<Vehicle> Vehicles=new ArrayList<>();
	try {

	connection=DBConnection.initializedb();
	PreparedStatement ct=connection.prepareStatement("select * from vehicle  where Availability=1");
	ResultSet result=ct.executeQuery();
	
	while(result.next()) {
	Vehicle vehicle = new Vehicle();
	vehicle.setId(result.getInt(1));
	vehicle.setModelNo(result.getString(2));
	vehicle.setCondition(result.getString(3));
	vehicle.setFeature(result.getString(4));
	vehicle.setCapacity(result.getString(5));
	vehicle.setAvailability(result.getString(6));
	Vehicles.add(vehicle);
	}
	System.out.println("call 2");

	} catch (Exception e) {
	System.out.println(e);
	}

	return Vehicles;
}

//Packages

@Override
public void insertPackage(Package packages) {
// TODO Auto-generated method stub
try {
	
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into packages (ID,PackageName,Price,Description) values(?,?,?,?)");
System.out.println("parse 4");
pt.setString(1, packages.getId());
pt.setString(2,packages.getPackageName());
pt.setString(3,packages.getPrice());
pt.setString(4,packages.getDescription());


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
public ArrayList<Package> listPackages(){
//TODO  Auto-generated method stub

ArrayList<Package> Packages=new ArrayList<>();
try {

connection=DBConnection.initializedb();
PreparedStatement ct=connection.prepareStatement("select * from packages");
ResultSet result=ct.executeQuery();

while(result.next()) {
	Package packages = new Package();
packages.setId(result.getString(1));
packages.setPackageName(result.getString(2));
packages.setPrice(result.getString(3));
packages.setDescription(result.getString(4));

Packages.add(packages);
}
System.out.println("call 2");

} catch (Exception e) {
System.out.println(e);
}

return Packages;
}


@Override
public void DeletePackage(String id) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("delete from packages where ID=?");
pt.setString(1,id);
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
public Package GetPackage(String id) {
// TODO Auto-generated method stub

	Package packages=new Package();

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("select ID,PackageName,Price,Description from packages where ID=?");
pt.setString(1,id);
ResultSet result=pt.executeQuery();

while(result.next()){
    
	packages.setId(result.getString(1));
	packages.setPackageName(result.getString(2));
	packages.setPrice(result.getString(3));
	packages.setDescription(result.getString(4));


}


} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}


return packages;
}


@Override
public void UpdatePackage(Package packages) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("update packages set PackageName=?,Price=?,Description=? where ID=? ");

pt.setString(1, packages.getPackageName());
pt.setString(2, packages.getPrice());
pt.setString(3, packages.getDescription());
pt.setString(4, packages.getId());



pt.executeUpdate();

} catch (ClassNotFoundException e) {
// TODO Auto-generated catch block
e.printStackTrace();
} catch (SQLException e) {
// TODO Auto-generated catch block
e.printStackTrace();
}
}

@Override
public Package getPackage(String id) {
	Package Packages = new Package();
	try {

	connection=DBConnection.initializedb();
	PreparedStatement ct=connection.prepareStatement("select * from packages where 	ID=?");
	ct.setString(1,id);
	ResultSet result=ct.executeQuery();

	while(result.next()) {
		Package packages = new Package();
	packages.setId(result.getString(1));
	packages.setPackageName(result.getString(2));
	packages.setPrice(result.getString(3));
	packages.setDescription(result.getString(4));


	}
	

	} catch (Exception e) {
	System.out.println(e);
	}

	return Packages;
}


@Override
public void insertCarRental(CarRental carRental) {
// TODO Auto-generated method stub
try {
	
connection=DBConnection.initializedb();
pt=connection.prepareStatement("insert into carrental (ID,CusName,RoomNo,date,time,DriverID,VehicleID,NoOfDays,Destination,Amount) values(?,?,?,?,?,?,?,?,?,?)");
System.out.println("parse 4");
pt.setInt(1, carRental.getId());
pt.setString(2,carRental.getCustomerName());
pt.setString(3,carRental.getRoomNo());
pt.setString(4,carRental.getDate());
pt.setString(5,carRental.getTime());

pt.setInt(6,carRental.getDriver());
pt.setInt(7,carRental.getVehicle());
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
PreparedStatement ct=connection.prepareStatement("select * from carrental");
ResultSet result=ct.executeQuery();

while(result.next()) {
CarRental carRental = new CarRental();
carRental.setId(result.getInt(1));
carRental.setCustomerName(result.getString(2));
carRental.setRoomNo(result.getString(3));
carRental.setDate(result.getString(4));
carRental.setTime(result.getString(5));
carRental.setDriver(result.getInt(6));
carRental.setVehicle(result.getInt(7));
carRental.setNodays(result.getInt(8));
carRental.setDestination(result.getString(9));
carRental.setAmount(result.getFloat(10));
CarRentals.add(carRental);
}
System.out.println("call 2");

} catch (Exception e) {
System.out.println(e);
}

return CarRentals;
}


@Override
public void DeleteCarRental(int id) {
// TODO Auto-generated method stub

try {
connection=DBConnection.initializedb();
pt=connection.prepareStatement("delete from carrental where ID=?");
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
pt=connection.prepareStatement("select ID,CusName,RoomNo,date,CAST(time AS TIME(0)),DriverID,VehicleID,NoofDays ,Destination,Amount from CarRental where ID=?");
pt.setInt(1,id);
ResultSet result=pt.executeQuery();

while(result.next()){

carRental.setId(result.getInt(1));
carRental.setCustomerName(result.getString(2));
carRental.setRoomNo(result.getString(3));
carRental.setDate(result.getString(4));
carRental.setTime(result.getString(5));
carRental.setDriver(result.getInt(6));
carRental.setVehicle(result.getInt(7));
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
pt=connection.prepareStatement("update carrental set CusName=?,RoomNo=?,date=?,time=?,DriverID=?,VehicleID=?,NoofDays=?,Destination=?,Amount=? where ID=? ");

pt.setString(1, carRental.getCustomerName());
pt.setString(2, carRental.getRoomNo());
pt.setString(3, carRental.getDate());
pt.setString(4, carRental.getTime());
pt.setInt(6, carRental.getDriver());
pt.setInt(5, carRental .getVehicle());
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

