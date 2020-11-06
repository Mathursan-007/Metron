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

		ITransport  carRentalImpl =new TransportImpl();
		Integer id=Integer.parseInt(request.getParameter("id"));
		
		carRental.setId(Integer.parseInt(request.getParameter("id")));
		String cusName=request.getParameter("cusName");
		carRental.setCustomerName(request.getParameter("cusName"));
		carRental.setRoomNo((request.getParameter("roomNo")));
		carRental.setDate(request.getParameter("date"));
		carRental.setTime(request.getParameter("time"));
		carRental.setDriver(Integer.parseInt(request.getParameter("driver")));
		carRental.setVehicle(Integer.parseInt(request.getParameter("vehicle")));
		
		int nod=Integer.parseInt(request.getParameter("noOfDays"));
		carRental.setNodays(nod);
		carRental.setDestination(request.getParameter("destination"));
		Float amount1=(Float.parseFloat(request.getParameter("totalAmount")));
		carRental.setAmount(Float.parseFloat(request.getParameter("totalAmount")));
		
		Float amount=nod*amount1;
		carRentalImpl.insertCarRental(carRental);
		carRentalImpl.updateDriver(Integer.parseInt(request.getParameter("driver")));
		carRentalImpl.updateVehicle(Integer.parseInt(request.getParameter("vehicle")));
		System.out.println("tripid:"+id);
		System.out.println("amount:"+amount);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/AddPayment.jsp");
		dispatcher.forward(request, response);
		
	}

}
