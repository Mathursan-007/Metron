package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CarRental;
import com.service.ITransport;
import com.service.TransportImpl;

/**
 * Servlet implementation class UpdateCarRental
 */
@WebServlet("/UpdateCarRental")
public class UpdateCarRental extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateCarRental() {
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
		   
		ITransport carRentalimpl=new TransportImpl();

		carRental.setId(Integer.parseInt(request.getParameter("id")));
		carRental.setCustomerName(request.getParameter("cusName"));
		carRental.setRoomNo(request.getParameter("roomNo"));
		carRental.setDate(request.getParameter("date"));
		carRental.setTime(request.getParameter("time"));
		carRental.setDriver(Integer.parseInt(request.getParameter("driver")));
		carRental.setVehicle(Integer.parseInt(request.getParameter("vehicle")));
		carRental.setNodays(Integer.parseInt(request.getParameter("noOfDays")));
		carRental.setDestination(request.getParameter("destination"));
		carRental.setAmount(Float.parseFloat(request.getParameter("totalAmount")));

		carRentalimpl.UpdateCarRental(carRental);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);
		
	}

}
