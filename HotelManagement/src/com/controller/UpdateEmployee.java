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
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
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
		employee.setFirstname(request.getParameter("firstname"));
		employee.setLastname(request.getParameter("lastname"));
		employee.setNIC(request.getParameter("nic"));
		employee.setEmail(request.getParameter("email"));
		//employee.setcontact(Float.parseFloat(request.getParameter("contact")));
		//employee.setAge(Integer.parseInt(request.getParameter("age")));
		employee.setDOB(request.getParameter("dob"));
		employee.setAddress(request.getParameter("address"));
		employee.setDesignation(request.getParameter("designation"));
		employee.setDepartment(request.getParameter("department"));
		
		employeeimpl.updateEmployee(employee);
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EmployeeDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
