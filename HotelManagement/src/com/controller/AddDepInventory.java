package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.DepInventory;
import com.model.Inventory;
import com.service.IInventory;
import com.service.InventoryImpl;

/**
 * Servlet implementation class AddDepInventory
 */
@WebServlet("/AddDepInventory")
public class AddDepInventory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddDepInventory() {
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
		DepInventory inventory = new DepInventory();
		inventory.setDepAssetID(request.getParameter("assetID"));
		inventory.setAssetName(request.getParameter("assetName"));
		inventory.setCategory(request.getParameter("category"));
		inventory.setQuantity(Integer.parseInt(request.getParameter("quantity")));

		
		//System.out.println("asset name is"+request.getParameter("assetName"));
		
		IInventory iInventory = new InventoryImpl();
		iInventory.addDepInventory(inventory); 

		request.setAttribute("value", 1);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/InventoryDashboard.jsp");
		dispatcher.forward(request, response);	}

}
