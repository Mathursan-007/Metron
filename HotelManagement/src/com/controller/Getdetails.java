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
 * Servlet implementation class Getdetails
 */
@WebServlet("/Getdetails")
public class Getdetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Getdetails() {
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
		String i=(request.getParameter("id"));
		ExtraServiceImp imp=new ExtraServiceImp();
		SpaReservation ds=new SpaReservation();
		
		ds=imp.getpack(i);
		
		request.setAttribute("pn",ds);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/AddSpaPayment.jsp");
		dispatcher.forward(request, response);
	}

}
