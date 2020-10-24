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
 * Servlet implementation class UpdateVenue
 */
@WebServlet("/UpdateVenue")
public class UpdateVenue extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateVenue() {
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
	
		
		
		Venue venue = new Venue();
		
		EventImpl eventimpl = new EventImpl();
		
		venue.setVenueID(Integer.parseInt(request.getParameter("venueid")));
		venue.setVenueType(request.getParameter("venuetype"));
		venue.setPrice(Float.parseFloat(request.getParameter("price")));
		venue.setCapacity(Integer.parseInt(request.getParameter("capacity")));
		venue.setAvailability(request.getParameter("avail"));
		
		
		eventimpl.updateVenue(venue); 
		
		request.setAttribute("value", 3);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EventDashboard.jsp");
		dispatcher.forward(request, response); 		
		
		
	}

}
