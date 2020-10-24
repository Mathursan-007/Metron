package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.IInventory;
import com.service.InventoryImpl;

/**
 * Servlet implementation class DeleteInflow
 */
@WebServlet("/DeleteInflow")
public class DeleteInflow extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteInflow() {
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
		int goodReqNo=Integer.parseInt(request.getParameter("goodRecNo"));
		IInventory inventoryImpl=new InventoryImpl();
		inventoryImpl.deleteInflowDetail(goodReqNo);
		
		request.setAttribute("value", 5);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/InventoryDashboard.jsp");
		dispatcher.forward(request, response);	
		
	}
	

}
