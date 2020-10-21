package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GuestReservation;
import com.service.RoomImpl;

/**
 * Servlet implementation class RoomCheckIn
 */
@WebServlet("/RoomCheckIn")
public class RoomCheckIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomCheckIn() {
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
		RoomImpl roomimpl=new RoomImpl();
		GuestReservation guestReservation = new GuestReservation();
		
		int CID=roomimpl.generateCID();
		
		guestReservation = roomimpl.getReservation(Integer.parseInt(request.getParameter("rrid")));
		guestReservation.setFullName(request.getParameter("fullName"));
		
		
		guestReservation.setCID(CID);
		
		roomimpl.addCheckedInDetails(guestReservation);
		
		request.setAttribute("value", 3);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FrontDeskRoomDashboard.jsp");
		dispatcher.forward(request, response);
		
	}

}
