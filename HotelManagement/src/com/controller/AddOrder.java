package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

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
 * Servlet implementation class Test
 */
@WebServlet("/AddOrder")
public class AddOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrder() {
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
		//doGet(request, response);
		
		//RestaurantCustomer rcustomer=new RestaurantCustomer();
		RestaurantImpl restaurantImpl=new RestaurantImpl();
		
		String[] qty=request.getParameterValues("qts");
		String[] item=request.getParameterValues("items");
	//	int rcustid=Integer.parseInt(request.getParameter("custid"));
		
		String type=request.getParameter("type");
		int orderid=restaurantImpl.generateOrderid();
		
		
		
		int rcustid=restaurantImpl.generateRcustid();
		
		
		restaurantImpl.addOrder(orderid,type,rcustid);
		
        
		
	//	ArrayList<Item> item=new ArrayList<Item>();
		//item=(ArrayList<Item>)request.getAttribute("arrayList");
		
      //  List list=Arrays.asList(a)
        
        
		int j=0;
		
		for(int i=0;i<item.length;i++) {
		
			 
			 while(Integer.parseInt(qty[j])==0) {
				 j++;
			 }
			 
			 float price=restaurantImpl.getItemPrice(Integer.parseInt(item[i]));
	         restaurantImpl.AddItemToOrder(orderid,Integer.parseInt(item[i]),Integer.parseInt(qty[j]),Integer.parseInt(qty[j])*price);
	         
	         j=j+1;
		
		}
		
		request.setAttribute("orderid",orderid);
		RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/Printkot.jsp");
		dispatcher.forward(request, response);
	}

}
