package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Item;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class UpdateItem
 */
@WebServlet("/UpdateItem")
public class UpdateItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateItem() {
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
		
		Item item=new Item();
		
	    RestaurantImpl restaurantimpl=new RestaurantImpl();
		
		item.setItemno(Integer.parseInt(request.getParameter("itemno")));
		item.setName(request.getParameter("name"));
		item.setCategory(request.getParameter("category"));
		item.setPrice(Float.parseFloat(request.getParameter("price")));
		
		restaurantimpl.updateItem(item);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ListItems.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
