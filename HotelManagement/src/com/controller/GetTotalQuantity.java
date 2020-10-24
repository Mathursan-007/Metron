package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Inventory;
import com.model.InventoryTransaction;
import com.service.IInventory;
import com.service.InventoryImpl;

/**
 * Servlet implementation class GetTotalQuantity
 */
@WebServlet("/GetTotalQuantity")
public class GetTotalQuantity extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetTotalQuantity() {
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
		String AssetID = request.getParameter("assetID");
		String Type = request.getParameter("type");

		InventoryImpl inventoryImpl=new InventoryImpl();
		InventoryTransaction inventory = new InventoryTransaction();

		int qty =inventoryImpl.totQty(AssetID, Type);
		request.setAttribute("Qty", qty);
		
		//request.setAttribute("value", 4);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/InventoryDashboard.jsp");
		dispatcher.forward(request, response);

		
	}

}
