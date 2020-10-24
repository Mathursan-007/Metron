package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MealPlan;
import com.service.EventImpl;

/**
 * Servlet implementation class AddMealPlan
 */
@WebServlet("/AddMealPlan")
public class AddMealPlan extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public AddMealPlan() {
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
		
		MealPlan mealplan = new MealPlan();
		EventImpl eventimpl = new EventImpl();
		  
		mealplan.setPackageId(Integer.parseInt(request.getParameter("PackageId")));
		mealplan.setPackageName(request.getParameter("PackageName"));
		mealplan.setPrice(Float.parseFloat(request.getParameter("Price")));
		mealplan.setSpecifications(request.getParameter("Specifications"));
		
		eventimpl.addMealPlan(mealplan);  
		
		request.setAttribute("value", 2);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EventDashboard.jsp");
		dispatcher.forward(request, response);	
  
		
	}

}
