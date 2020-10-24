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
 * Servlet implementation class GetIncome
 */
@WebServlet("/GetIncome")
public class GetIncome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetIncome() {
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
		
		
		int Income_ID = (Integer.parseInt(request.getParameter("Income_ID")));
		System.out.println(Income_ID);
		IFinance financeImpl=new FinanceImpl();
		Income income=new Income();
		income=financeImpl.GetIncome(Income_ID);
		
		
		
		request.setAttribute("income", income);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EditIncome.jsp");
		dispatcher.forward(request, response);
	}

}

