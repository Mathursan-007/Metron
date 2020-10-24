package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GymReservation;
import com.model.SpaReservation;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class AddGPayment
 */
@WebServlet("/AddGPayment")
public class AddGPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGPayment() {
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
		GymReservation gss=new GymReservation();
		ExtraServiceImp extra=new ExtraServiceImp();
		
		gss.setCusName(request.getParameter("username"));
		gss.setRID(request.getParameter("id"));
		gss.setGpackagename(request.getParameter("pname"));
		gss.setAmount(Float.parseFloat(request.getParameter("amount")));
		
		extra.addGymPayment(gss);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ExtraserviceDashboard.jsp");
		dispatcher.forward(request, response);

	}

}
