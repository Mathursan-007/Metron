package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.model.cityTour;

import com.model.Package;
import com.service.ITransport;
import com.service.TransportImpl;
/**
 * Servlet implementation class cityTour
 */
@WebServlet("/AddcityTour")
public class AddcityTour extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddcityTour() {
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
		

		cityTour city=new cityTour();

		ITransport icityimpl =new TransportImpl();
		Integer id=Integer.parseInt(request.getParameter("id"));
		city.setId(Integer.parseInt(request.getParameter("id")));
		city.setCustomerName(request.getParameter("cusName"));
		String pack=(request.getParameter("packages"));
		System.out.println("pack:"+pack);
		city.setPackage(request.getParameter("packages"));
		 ITransport ipackageImpl=new TransportImpl();
         Package packages=new Package();
         packages=ipackageImpl.getPackage(pack);
         System.out.println("packname:"+packages.getPackageName());
//		int nop=Integer.parseInt(request.getParameter("noperson"));
//		city.setNoPerson(nop);
//		Float amount=Float.parseFloat(packages.getPrice())*nop;
//		city.setAmount(amount);
		city.setDate(request.getParameter("date"));
		city.setTime(request.getParameter("time"));
		city.setVehicle(Integer.parseInt(request.getParameter("vehicle")));
		city.setDriver(Integer.parseInt(request.getParameter("driver")));
		
	
		city.setRoomNo(request.getParameter("roomNo"));
		icityimpl.updateDriver(Integer.parseInt(request.getParameter("driver")));
		icityimpl.updateVehicle(Integer.parseInt(request.getParameter("vehicle")));
		System.out.println("parse 1");
		icityimpl.insertcityTour(city);
		System.out.println("parse 2");

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);

	}

}
