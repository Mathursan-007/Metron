package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.model.Income;
import com.service.FinanceImpl;


/**
 * Servlet implementation class SearchIncome
 */
@WebServlet("/SearchIncome")
public class SearchIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchIncome() {
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
		
		Income income = new Income();
		
		String start= (request.getParameter("Start_Date"));
		String end= (request.getParameter("End_Date"));
		FinanceImpl financeimpl=new FinanceImpl();
		
		income.setStart_Date(start);
		income.setEnd_Date(end);
		
		
		System.out.print("Category : " + income.getCategory());
		System.out.print("Amount : " + income.getAmount());
		
		
		
		request.setAttribute("income", income);
		
		request.setAttribute("Start_Date", start);
		request.setAttribute("End_Date", end);
		
	
		request.setAttribute("value", 7);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/SearchIncome.jsp");

		dispatcher.forward(request, response);
		
		
		
		
	}

}
