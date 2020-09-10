package com.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.RestaurantCustomer;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class ReserveTable
 */
@WebServlet("/ReserveTable")
public class ReserveTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveTable() {
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
		
		RestaurantCustomer rcustomer=new RestaurantCustomer();
		RestaurantImpl restaurantImpl=new RestaurantImpl();
		
		int rcustid=restaurantImpl.generateRcustid();
		
		rcustomer.setRCustomerID(rcustid);
		rcustomer.setFullName(request.getParameter("fullname"));
		rcustomer.setNIC(request.getParameter("nic"));
		rcustomer.setPhoneNo(request.getParameter("phone"));
		rcustomer.setEmail(request.getParameter("email"));
		
		restaurantImpl.addRcustomer(rcustomer);
		restaurantImpl.addTableReservation(rcustid);
		
		int trid=restaurantImpl.getTableRid(rcustid);
		
		String[] tables=request.getParameterValues("tables");
		//List list=Arrays.asList(tables);
		
		for(int i=0;i<tables.length;i++){
			
			restaurantImpl.reserveTable(trid, Integer.parseInt(tables[i]));
			
		}
		
		
	}

}