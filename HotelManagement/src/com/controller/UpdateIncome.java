package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Income;
import com.service.FinanceImpl;
import com.service.IFinance;



/**
 * Servlet implementation class UpdateIncome
 */
@WebServlet("/UpdateIncome")
public class UpdateIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateIncome() {
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

		Income income=new Income();
		
		IFinance financeImpl=new FinanceImpl();
		
		income.setIncome_ID(Integer.parseInt(request.getParameter("Income_ID")));
		income.setPayment_ID(Integer.parseInt(request.getParameter("Payment_ID")));
		income.setCategory(request.getParameter("Category"));
		income.setAmount(Float.parseFloat(request.getParameter("Amount")));
		income.setDate(request.getParameter("Date"));

		
		
		
		financeImpl.UpdateIncome(income);
		
		request.setAttribute("value", 3);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}