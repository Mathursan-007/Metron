package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Venue;
import com.service.EventImpl;

/**
 * Servlet implementation class SearchAvailability
 */
@WebServlet("/SearchAvailability")
public class SearchAvailability extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchAvailability() {
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
	
		String searchDate = request.getParameter("date");  
		int venueType = Integer.parseInt(request.getParameter("eventname"));
		
		ArrayList <Venue> Halls = new ArrayList<>(); 
		System.out.println(searchDate + venueType);
		Venue venue = new Venue();
		EventImpl eventimpl = new EventImpl();
		
		Halls = eventimpl.listAvailableHalls(venueType, searchDate);  
		
		request.setAttribute("halls", Halls);  
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/VenueAvailability.jsp");
		dispatcher.forward(request, response);
		
	}
                     
}
