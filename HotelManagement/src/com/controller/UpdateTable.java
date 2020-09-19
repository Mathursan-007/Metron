package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Table;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class UpdateTable
 */
@WebServlet("/UpdateTable")
public class UpdateTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateTable() {
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
		

		Table table=new Table();
		
		table.setTableno(Integer.parseInt(request.getParameter("tableno")));
		table.setType(request.getParameter("type"));
		table.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		table.setPrice(Float.parseFloat(request.getParameter("price")));
		
		RestaurantImpl restaurantimpl=new RestaurantImpl();
		
		restaurantimpl.updateTable(table);
		
		request.setAttribute("value", "Table updated");
		
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
