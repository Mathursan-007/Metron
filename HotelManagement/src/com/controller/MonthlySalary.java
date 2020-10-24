package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Salary;
import com.service.EmployeeImpl;

/**
 * Servlet implementation class MonthlySalary
 */
@WebServlet("/MonthlySalary")
public class MonthlySalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MonthlySalary() {
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
		//doGet(request, response);
		
EmployeeImpl employeeimpl =new EmployeeImpl();
		
		//int empid = (Integer.parseInt(request.getParameter("empid")));
		String month = (request.getParameter("month"));
		
		//String fname = employeeimpl.getEmployee(empid).getFirstname()+" "+employeeimpl.getEmployee(empid).getLastname();
		
		
		
		Salary salary = new Salary();
		//salary.setFname(fname);
		
		ArrayList<Salary> summary = new ArrayList<>();
		
		summary = employeeimpl.MonthlySalary(month);
		
		salary.setSummary(summary);
		
		request.setAttribute("salary", salary);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/MonthlySalarySummary.jsp");
		dispatcher.forward(request, response);
	}

}
