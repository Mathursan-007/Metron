package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.PurchaseOrder;
import com.service.FinanceImpl;
import com.service.IFinance;

/**
 * Servlet implementation class AddPurchaseOrder
 */
@WebServlet("/AddPurchaseOrder")
public class AddPurchaseOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPurchaseOrder() {
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
		
		PurchaseOrder order = new PurchaseOrder();
		order.setRequest_No(Integer.parseInt(request.getParameter("Request_No")));
		order.setAsset_ID(request.getParameter("Asset_ID"));
		order.setAsset_Name(request.getParameter("Asset_Name"));
		order.setQuantity(Integer.parseInt(request.getParameter("Quantity")));
		order.setAmount(Float.parseFloat(request.getParameter("Amount")));
		order.setSupplier_ID(request.getParameter("Supplier_ID"));
		




	IFinance iFinance = new FinanceImpl();
	iFinance.AddPurchaseOrder(order);

	request.setAttribute("value", 6);
	RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
	dispatcher.forward(request, response);

	}

	}

