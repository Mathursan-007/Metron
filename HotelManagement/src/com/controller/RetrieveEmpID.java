package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Employee;
import com.service.EmployeeImpl;

/**
 * Servlet implementation class RetrieveEmpID
 */
@WebServlet("/RetreiveEmpID")
public class RetrieveEmpID extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RetrieveEmpID() {
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

		Employee employee=new Employee();
		EmployeeImpl employeeimpl=new EmployeeImpl();
		
		employee.setempid(Integer.parseInt(request.getParameter("emp_ID")));
		
		//employeeimpl.retrieveempid(employee);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EmployeeDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
