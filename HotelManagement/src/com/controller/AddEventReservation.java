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
 * Servlet implementation class AddEventReservation
 */
@WebServlet("/AddEventReservation")
public class AddEventReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddEventReservation() {
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
		

		
				
		EventReservation eventreservation = new EventReservation();  
		EventImpl eventimpl = new EventImpl();
		
		float amount =  eventimpl.getVenueCost(request.getParameter("venuetype"));
		eventreservation.setPrice(amount); 
			 		
		
		int ReservationID = eventimpl.generateEventReservationid();
		
		eventreservation.setEventReservation_ID(ReservationID);
		eventreservation.setFullName(request.getParameter("fname"));  
		eventreservation.setNIC(request.getParameter("nic"));
		eventreservation.setPhoneNo(request.getParameter("contact"));
		eventreservation.setEventName(request.getParameter("eventname"));
		eventreservation.setVenue(request.getParameter("venuetype"));
		eventreservation.setNo_of_Guests(Integer.parseInt(request.getParameter("noOfguest")));
		eventreservation.setDate(request.getParameter("date"));
		eventreservation.setTime(request.getParameter("time"));
		eventreservation.setHallID(Integer.parseInt(request.getParameter("hallid"))); 
		eventreservation.setPaymentMethod(request.getParameter("pay"));             
	
		
		eventimpl.addEventReservation(eventreservation);  
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EventDashboard.jsp");
		dispatcher.forward(request, response);	
		
	}

}
