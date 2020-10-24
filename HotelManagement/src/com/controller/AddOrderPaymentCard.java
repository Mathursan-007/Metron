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

/**
 * Servlet implementation class AddOrderPaymentCard
 */
@WebServlet("/AddOrderPaymentCard")
public class AddOrderPaymentCard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddOrderPaymentCard() {
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
		
		
		RestaurantImpl restaurantImpl=new RestaurantImpl();
		int id=Integer.parseInt(request.getParameter("orderid"));
		float amount=Float.parseFloat(request.getParameter("amount"));
		float tot=0;
		
		ArrayList<Item> Items=new ArrayList<>();
		Items =restaurantImpl.printbill(id);
		
		for(Item item:Items) {
			
			tot+=item.getPrice();
			
		}
			
			
		 if(restaurantImpl.checkOrderStatus(id)==true){
			
			
			request.setAttribute("value", "Already Paid");
			RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
			
			
		}else if(tot!=amount){
			
			request.setAttribute("value", "Invalid Amount");
			RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
			
				
		} else {
			
			restaurantImpl.addOrderPayment(id,amount,"Card");
			request.setAttribute("value", "Payment added");
			RequestDispatcher dispatcher=request.getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			dispatcher.forward(request, response);
					
		}
		
		
		
		
	}

}
