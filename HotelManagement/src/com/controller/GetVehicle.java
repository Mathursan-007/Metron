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
 * Servlet implementation class GetVehicle
 */
@WebServlet("/GetVehicle")
public class GetVehicle extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetVehicle() {
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

	int id=(Integer.parseInt(request.getParameter("id")));
		
		ITransport vehicleImpl=new TransportImpl();
		Vehicle vehicle=new Vehicle();
		vehicle=vehicleImpl.GetVehicle(id);

		request.setAttribute("vehicle", vehicle);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/VehicleEdit.jsp");
		dispatcher.forward(request, response);
	}

}
