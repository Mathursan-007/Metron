package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.EventReservation;
import com.service.EventImpl;

/**
 * Servlet implementation class GetEventReservation
 */
@WebServlet("/GetEventReservation")
public class GetEventReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetEventReservation() {
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
		
		int reservationId = Integer.parseInt(request.getParameter("EReserveId"));  
		EventImpl eventimpl = new EventImpl();
		EventReservation eventreservation = new EventReservation();
		eventreservation = eventimpl.getEventReservation(reservationId); 
		
		float price = eventimpl.getVenueCost(request.getParameter("venuetype"));
		
		request.setAttribute("EventReservation", eventreservation); 
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/GetEventReservation.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
