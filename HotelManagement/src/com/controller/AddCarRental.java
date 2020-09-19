package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CarRental;
import com.service.CarRentalImpl;
import com.service.ICarRental;

/**
 * Servlet implementation class AddCarRental
 */
@WebServlet("/AddCarRental")
public class AddCarRental extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddCarRental() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		CarRental carRental=new CarRental();

		ICarRental  carRentalImpl =new CarRentalImpl();
		
		carRental.setId(Integer.parseInt(request.getParameter("id")));
		carRental.setCustomerName(request.getParameter("cusName"));
		carRental.setRoomNo((request.getParameter("roomNo")));
		carRental.setDate(request.getParameter("date"));
		carRental.setTime(request.getParameter("time"));
		carRental.setVehicle(Integer.parseInt(request.getParameter("vehicle")));
		carRental.setDriver(Integer.parseInt(request.getParameter("driver")));
		carRental.setNodays(Integer.parseInt(request.getParameter("noOfDays")));
		carRental.setDestination(request.getParameter("destination"));
		carRental.setAmount(Float.parseFloat(request.getParameter("totalAmount")));
		

		carRentalImpl.insertCarRental(carRental);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);

	}

}
