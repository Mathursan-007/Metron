package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Expense;
import com.model.PurchaseOrder;
import com.service.FinanceImpl;
import com.service.IFinance;

/**
 * Servlet implementation class GetPurchaseOrder
 */
@WebServlet("/GetPurchaseOrder")
public class GetPurchaseOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPurchaseOrder() {
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
		
		int Request_No = (Integer.parseInt(request.getParameter("Request_No")));
		System.out.println(Request_No);
		IFinance financeImpl=new FinanceImpl();
		PurchaseOrder order=new PurchaseOrder();
		order=financeImpl.GetPurchaseOrder(Request_No);
		
		
		
		request.setAttribute("order", order);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/PurchaseOrder.jsp");
		dispatcher.forward(request, response);
	}

}
