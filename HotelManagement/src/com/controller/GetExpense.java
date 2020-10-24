package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Expense;
import com.service.IFinance;
import com.service.FinanceImpl;


/**
 * Servlet implementation class GetExpense
 */
@WebServlet("/GetExpense")
public class GetExpense extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetExpense() {
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
		
		
		int Expense_ID = (Integer.parseInt(request.getParameter("Expense_ID")));
		System.out.println(Expense_ID);
		IFinance financeImpl=new FinanceImpl();
		Expense expense=new Expense();
		expense=financeImpl.GetExpense(Expense_ID);
		
		
		
		request.setAttribute("expense", expense);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EditExpense.jsp");
		dispatcher.forward(request, response);
	}

}

