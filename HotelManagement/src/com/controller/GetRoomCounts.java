package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Room;
import com.service.RoomImpl;

/**
 * Servlet implementation class GetRoomCounts
 */
@WebServlet("/GetRoomCounts")
public class GetRoomCounts extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetRoomCounts() {
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
		Room room=new Room();
		RoomImpl roomimpl=new RoomImpl();
		
		String checkIn=request.getParameter("checkIn");
		String checkOut=request.getParameter("checkOut");
		
		room.setCheckIn(checkIn);
		room.setCheckOut(checkOut);
		
		room.setStandardRoomCount(roomimpl.setRoomAvailabilityCount(checkIn,checkOut,1));
		room.setPremiumRoomCount(roomimpl.setRoomAvailabilityCount(checkIn,checkOut,2));
		room.setEliteRoomCount(roomimpl.setRoomAvailabilityCount(checkIn,checkOut,3));
		
		
		
		
		request.setAttribute("room", room);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/RoomCustomer.jsp");
		dispatcher.forward(request, response);
	}

}
