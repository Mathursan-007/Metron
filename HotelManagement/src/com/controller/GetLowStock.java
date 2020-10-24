package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Inventory;
import com.service.IInventory;
import com.service.InventoryImpl;

/**
 * Servlet implementation class GetLowStock
 */
@WebServlet("/GetLowStock")
public class GetLowStock extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetLowStock() {
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
		IInventory inventoryImpl=new InventoryImpl();
		Inventory inventory=new Inventory();

		inventory=inventoryImpl.getLowStock(AssetID);
		
		request.setAttribute("inventory", inventory);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/OrderForm.jsp");
		dispatcher.forward(request, response);	}

}
