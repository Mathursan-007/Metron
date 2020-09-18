package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.RestaurantImpl;

/**
 * Servlet implementation class ReleaseTable
 */
@WebServlet("/ReleaseTable")
public class ReleaseTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReleaseTable() {
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
		
		int tableno=Integer.parseInt(request.getParameter("tableno"));
		
		RestaurantImpl restaurantimpl=new RestaurantImpl();
		restaurantimpl.releaseTable(tableno);
		
		PrintWriter out=response.getWriter();
		
	 
		request.setAttribute("value", 4);
		
		RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
