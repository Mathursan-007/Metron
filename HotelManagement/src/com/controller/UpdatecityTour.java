package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.cityTour;
import com.service.TransportImpl;

import com.service.ITransport;

/**
 * Servlet implementation class UpdatecityTour
 */
@WebServlet("/UpdatecityTour")
public class UpdatecityTour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatecityTour() {
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
		// TODO Auto-generated method stub

		cityTour city=new cityTour();
		   
		ITransport icityimpl=new TransportImpl();

		
		Integer id=Integer.parseInt(request.getParameter("id"));
		city.setId(Integer.parseInt(request.getParameter("id")));
		city.setCustomerName(request.getParameter("cusName"));
		city.setPackage(request.getParameter("packages"));
		
		city.setNoPerson(Integer.parseInt(request.getParameter("noperson")));
		city.setAmount(Float.parseFloat(request.getParameter("amount")));
		city.setDate(request.getParameter("date"));
		city.setTime(request.getParameter("time"));
		city.setVehicle(Integer.parseInt(request.getParameter("vehicle")));
		city.setDriver(Integer.parseInt(request.getParameter("driver")));
		

		city.setRoomNo((request.getParameter("roomNo")));
	
	

		icityimpl.UpdatecityTour(city);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
