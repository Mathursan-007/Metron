package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Supplier;
import com.service.FinanceImpl;
import com.service.IFinance;



/**
 * Servlet implementation class UpdateSupplier
 */
@WebServlet("/UpdateSupplier")
public class UpdateSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSupplier() {
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

		Supplier supplier=new Supplier();
		
		IFinance financeImpl=new FinanceImpl();
		
		supplier.setSupplier_ID(request.getParameter("Supplier_ID"));
		supplier.setName(request.getParameter("Name"));
		supplier.setType(request.getParameter("Type"));
		supplier.setContact_No(request.getParameter("Contact_No"));
		supplier.setEmail(request.getParameter("Email"));
		supplier.setAddress(request.getParameter("Address"));

		
	
		financeImpl.UpdateSupplier(supplier);
		
		
		request.setAttribute("value", 2);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}