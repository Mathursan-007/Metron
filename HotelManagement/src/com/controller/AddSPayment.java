package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.SpaReservation;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class AddSPayment
 */
@WebServlet("/AddSPayment")
public class AddSPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSPayment() {
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
		SpaReservation sss=new SpaReservation();
		ExtraServiceImp extraserviceimpl=new ExtraServiceImp();
		
		sss.setCusName(request.getParameter("username"));
		sss.setRID(request.getParameter("id"));
		sss.setSpackagename(request.getParameter("pname"));
		sss.setAmount(Float.parseFloat(request.getParameter("amount")));
		
		extraserviceimpl.addSpaPayment(sss);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ExtraserviceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
