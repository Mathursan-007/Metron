package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.InventoryPurchase;
import com.service.IInventory;
import com.service.InventoryImpl;

/**
 * Servlet implementation class AddInventoryRequest
 */
@WebServlet("/AddInventoryRequest")
public class AddInventoryRequest extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddInventoryRequest() {
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
		
		InventoryPurchase inventory = new InventoryPurchase();
		inventory.setAssetID(request.getParameter("assetID"));
		inventory.setAssetName(request.getParameter("assetName"));
		inventory.setQuantity(Integer.parseInt(request.getParameter("quantity")));


		
		
		IInventory iInventory = new InventoryImpl();
		iInventory.addStockRequest(inventory);

	    request.setAttribute("value", 2);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/InventoryDashboard.jsp");
		dispatcher.forward(request, response);	
	}

}
