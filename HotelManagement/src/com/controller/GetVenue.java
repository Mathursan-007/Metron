package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Venue;
import com.service.EventImpl;

/**
 * Servlet implementation class GetVenue
 */
@WebServlet("/GetVenue")
public class GetVenue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetVenue() {
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
		
		int venueId = Integer.parseInt(request.getParameter("venueid"));  
		EventImpl eventimpl = new EventImpl();
		Venue venue = new Venue();
		venue = eventimpl.getVenue(venueId); 
		
		request.setAttribute("venue", venue); 
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/GetVenue.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
