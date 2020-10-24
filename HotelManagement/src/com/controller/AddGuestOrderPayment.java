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
import com.service.RestaurantImpl;
import com.service.RoomImpl;

/**
 * Servlet implementation class AddGuestOrderPayment
 */
@WebServlet("/AddGuestOrderPayment")
public class AddGuestOrderPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGuestOrderPayment() {
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
	
		
		RoomImpl roomimpl=new RoomImpl();
		RestaurantImpl restaurantImpl=new RestaurantImpl();
		int orderid=Integer.parseInt(request.getParameter("orderid"));
		int rrid=Integer.parseInt(request.getParameter("reserveid"));
		int RoomBillID = roomimpl.generateBillId();
        float amount=0;
		
		ArrayList<Item> Items=new ArrayList<>();
		Items =restaurantImpl.printbill(orderid);
		
		for(Item item:Items) {
			
			amount+=item.getPrice();
			
		}
			
			
		 if(restaurantImpl.checkOrderStatus(orderid)==true){
			
			
			request.setAttribute("value", "Already Paid");
			RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
			
			
		}else {
			
			restaurantImpl.addGuestOrder(orderid, rrid, amount, RoomBillID);
			request.setAttribute("value", "Payment added");
			RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
			
			
		}
		
		
		
	}

}
