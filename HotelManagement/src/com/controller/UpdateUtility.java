package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Utility;
import com.service.FinanceImpl;
import com.service.IFinance;



/**
 * Servlet implementation class UpdateUtility
 */
@WebServlet("/UpdateUtility")
public class UpdateUtility extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateUtility() {
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

		Utility utility=new Utility();
		
		IFinance financeImpl=new FinanceImpl();
		
		utility.setPayment_ID(Integer.parseInt(request.getParameter("paymentID")));
		utility.setCategory(request.getParameter("category"));
		utility.setAmount(Float.parseFloat(request.getParameter("amount")));
		utility.setDate(request.getParameter("Date"));

		
		
		
		financeImpl.UpdateUtility(utility);
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}