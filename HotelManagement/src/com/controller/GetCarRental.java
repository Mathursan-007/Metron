package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.CarRental;
import com.service.CarRentalImpl;
import com.service.ICarRental;

/**
 * Servlet implementation class GetCarRental
 */
@WebServlet("/GetCarRental")
public class GetCarRental extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetCarRental() {
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
		
		int id=Integer.parseInt(request.getParameter("id"));
		
		ICarRental carRentalimpl=new CarRentalImpl();
		CarRental carRental=new CarRental();
		carRental=carRentalimpl.GetCarRental(id);

		request.setAttribute("carRental", carRental);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/CarRentalEdit.jsp");
		dispatcher.forward(request, response);
		

	}

}
