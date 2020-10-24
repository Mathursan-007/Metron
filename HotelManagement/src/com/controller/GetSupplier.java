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
 * Servlet implementation class GetSupplier
 */
@WebServlet("/GetSupplier")
public class GetSupplier extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSupplier() {
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
		
		
		String Supplier_ID = (request.getParameter("Supplier_ID"));
		System.out.println(Supplier_ID);
		IFinance financeImpl=new FinanceImpl();
		Supplier supplier=new Supplier();
		supplier=financeImpl.GetSupplier(Supplier_ID);
		
		
		
		request.setAttribute("supplier", supplier);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EditSupplier.jsp");
		dispatcher.forward(request, response);
	}

}
