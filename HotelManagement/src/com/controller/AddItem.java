package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Item;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class addItem
 */
@WebServlet("/AddItem")
public class AddItem extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddItem() {
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
		
		Item item=new Item();
		RestaurantImpl restaurantimpl=new RestaurantImpl();
		
		
		item.setName(request.getParameter("name"));
		item.setCategory(request.getParameter("category"));
		item.setPrice(Float.parseFloat(request.getParameter("price")));
		
	
		
		if(restaurantimpl.checkItem(item.getName())==false){
			
			
			
			//out.println(item.getName());
			restaurantimpl.addItem(item);
			request.setAttribute("value", "Item added");
			
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
			
		}else {
			
			//out.print(restaurantimpl.checkItem(item.getName()));
			
		//out.println(item.getName());
			
			request.setAttribute("value", "Item exists");
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
		
		
		
	}

}
