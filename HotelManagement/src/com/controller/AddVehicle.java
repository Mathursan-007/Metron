package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Vehicle;

import com.service.ITransport;
import com.service.TransportImpl;

/**
 * Servlet implementation class AddVehicle
 */
@WebServlet("/AddVehicle")
public class AddVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddVehicle() {
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
		Vehicle vehicle=new Vehicle();

		ITransport  vehicleImpl =new TransportImpl();
int Id=(Integer.parseInt(request.getParameter("id")));
		vehicle.setId(Integer.parseInt(request.getParameter("id")));
		vehicle.setModelNo(request.getParameter("modelNo"));
		vehicle.setCondition((request.getParameter("condition")));
		vehicle.setFeature((request.getParameter("feature")));
		vehicle.setCapacity((request.getParameter("capacity")));
		vehicle.setAvailability(request.getParameter("availability"));
		
		
		System.out.println("parse 1");
		vehicleImpl.insertVehicle(vehicle);
		System.out.println("parse 2");

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);

	}

}
