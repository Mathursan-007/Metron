package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Item;
import com.model.Order;
import com.model.RestaurantCustomer;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class UpdateOrder
 */
@WebServlet("/UpdateOrder")
public class UpdateOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateOrder() {
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
		
		String[] qty=request.getParameterValues("qts");
		String[] item=request.getParameterValues("items");
	    int orderid=Integer.parseInt(request.getParameter("orderid"));
		
		
		Order order=new Order();
		order.setOrderID(orderid);
		
		
        ArrayList<Item> items=new ArrayList<Item>();
        
        
		int j=0;
		
		for(int i=0;i<item.length;i++) {
		  
			 Item it=new Item();
			 
			 while(Integer.parseInt(qty[j])==0) {
				 j++;
			 }
			 
			 float price=restaurantImpl.getItemPrice(Integer.parseInt(item[i]));
	         restaurantImpl.AddItemToOrder(orderid,Integer.parseInt(item[i]),Integer.parseInt(qty[j]),Integer.parseInt(qty[j])*price);
	         
	         it.setName(restaurantImpl.getItem(Integer.parseInt(item[i])).getName());
	         it.setQty(Integer.parseInt(qty[j]));
	         items.add(it);
	        
	         j=j+1;
		
		}
		
		order.setItems(items);
		
		request.setAttribute("order",order);
		RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/PrintUpdatedOrder.jsp");
		dispatcher.forward(request, response);
	
	}

}
