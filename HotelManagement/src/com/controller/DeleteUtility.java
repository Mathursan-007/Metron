package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.FinanceImpl;
import com.service.IFinance;



/**
 * Servlet implementation class DeleteUtility
 */
@WebServlet("/DeleteUtility")
public class DeleteUtility extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteUtility() {
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
		int Payment_ID = (Integer.parseInt(request.getParameter("paymentID")));
		IFinance financeImpl=new FinanceImpl();
		financeImpl.DeleteUtility(Payment_ID);
		
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
