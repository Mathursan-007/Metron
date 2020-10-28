package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Driver;

import com.service.ITransport;
import com.service.TransportImpl;



/**
 * Servlet implementation class AddDriver
 */
@WebServlet("/AddDriver")
public class AddDriver extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDriver() {
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
		

		Driver driver=new Driver();

		ITransport  driverImpl =new TransportImpl();
		Integer Id=Integer.parseInt(request.getParameter("id"));
		driver.setId(Integer.parseInt(request.getParameter("id")));
		driver.setDriverName(request.getParameter("driverName"));
	     driver.setMobileNo((request.getParameter("mobileNo")));
		driver.setAvailability(request.getParameter("availability"));
		
		
		System.out.println("parse 1");
		driverImpl.insertDriver(driver);
		System.out.println("parse 2");

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);

	}

}
