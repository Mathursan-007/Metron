package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Expense;
import com.service.FinanceImpl;

/**
 * Servlet implementation class SearchExpense
 */
@WebServlet("/SearchExpense")
public class SearchExpense extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchExpense() {
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
		
		
		
		Expense expense = new Expense();
		
		String start= (request.getParameter("Start_Date"));
		String end= (request.getParameter("End_Date"));
		FinanceImpl financeimpl=new FinanceImpl();
		
		expense.setStart_Date(start);
		expense.setEnd_Date(end);
		
		
		System.out.print("Category : " + expense.getCategory());
		System.out.print("Amount : " + expense.getAmount());
		
		request.setAttribute("expense", expense);
	
		
		request.setAttribute("value", 7);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/SearchExpense.jsp");

		dispatcher.forward(request, response);
		
		
		
		
	}

}
