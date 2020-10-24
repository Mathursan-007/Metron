package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Employee;
import com.model.Salary;
import com.service.EmployeeImpl;

/**
 * Servlet implementation class CalculateSalary
 */
@WebServlet("/CalculateSalary")
public class CalculateSalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculateSalary() {
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
		doGet(request, response);
		
		Employee employee = new Employee();
		Salary salary = new Salary();
		
		EmployeeImpl employeeimpl=new EmployeeImpl();
		
		employee=employeeimpl.getEmployee(Integer.parseInt(request.getParameter("empid")));
		
		float basicsalary = salary.calcBasicSal(employee.getDesignation());
		
		int Empid = Integer.parseInt(request.getParameter("empid"));
		String Month = request.getParameter("date");
		int days = employeeimpl.getAttendance(Empid, Month);
		
		salary.setDays(days);
		
		if(days > 20){
		float overtime = salary.calcOvertime(employee.getDesignation(), salary.getDays());
		salary.setOvertime(overtime);
		}
		else if(days < 14){
		float leave = salary.calcLeave(employee.getDesignation(), salary.getDays());
		salary.setLeave(leave);
		}
		
		//salary.setEmpid(Integer.parseInt(request.getParameter("empid")));
		//salary.setMonth(request.getParameter("month"));
		salary.setBasicSal(basicsalary);
		salary.setEmpid(Empid);
		salary.setMonth(Month);
		//salary.setLeave(Float.parseFloat(request.getParameter("leave")));
		//salary.setNetSal(Float.parseFloat(request.getParameter("netsalary")));
		
		//employeeimpl.CalculateSalary(salary);
		
		request.setAttribute("salary", salary);
		//request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EmployeeDashboard.jsp");
		dispatcher.forward(request, response);
		
	}

}
