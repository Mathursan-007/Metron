package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Table;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class AddTable
 */
@WebServlet("/AddTable")
public class AddTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTable() {
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
		
		PrintWriter out=response.getWriter();
	
       
		
		Table table=new Table();
		
		table.setType(request.getParameter("type"));
		table.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		table.setPrice(Float.parseFloat(request.getParameter("price")));
		
		RestaurantImpl restaurantimpl=new RestaurantImpl();
		
		restaurantimpl.addTable(table); 
         
			 
		request.setAttribute("value", "Table added");
		RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
