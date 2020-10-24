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
 * Servlet implementation class AddExpense
 */
@WebServlet("/AddExpense")
public class AddExpense extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddExpense() {
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


	Expense expense = new Expense();
	//expense.setExpense_ID(Integer.parseInt(request.getParameter("Expense_ID")));
	expense.setPayment_ID(Integer.parseInt(request.getParameter("Payment_ID")));
	expense.setCategory(request.getParameter("Category"));
	expense.setAmount(Float.parseFloat(request.getParameter("Amount")));
	expense.setDate(request.getParameter("Date"));




IFinance iFinance = new FinanceImpl();
iFinance.AddExpense(expense);

request.setAttribute("value", 4);
RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
dispatcher.forward(request, response);

}

}

