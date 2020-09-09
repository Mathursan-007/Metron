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
 * Servlet implementation class GetTable
 */
@WebServlet("/GetTable")
public class GetTable extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTable() {
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
		Table table=new Table();
        RestaurantImpl restaurantimpl=new RestaurantImpl();
		table=restaurantimpl.getTable(tableno);
		
		request.setAttribute("table", table);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/GetTable.jsp");
		dispatcher.forward(request, response);
		
	}

}
