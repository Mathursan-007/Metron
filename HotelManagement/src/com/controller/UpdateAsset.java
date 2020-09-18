package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Inventory;
import com.model.Room;
import com.service.IInventory;
import com.service.InventoryImpl;
import com.service.RoomImpl;

/**
 * Servlet implementation class UpdateAsset
 */
@WebServlet("/UpdateAsset")
public class UpdateAsset extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateAsset() {
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

		Inventory inventory=new Inventory();
		
		IInventory inventoryImpl=new InventoryImpl();
		
		inventory.setAssetID(request.getParameter("assetID"));
		inventory.setAssetName(request.getParameter("assetName"));
		inventory.setMinQuantity(Integer.parseInt(request.getParameter("minQuantity")));
		inventory.setAvailableQuantity(Integer.parseInt(request.getParameter("availableQuantity")));
		inventory.setTotalQuantity(Integer.parseInt(request.getParameter("totalQuantity")));
		
		
		
		inventoryImpl.updateAsset(inventory);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/InventoryDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
