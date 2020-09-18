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
 * Servlet implementation class RoomGuestReservation
 */
@WebServlet("/RoomGuestReservation")
public class RoomGuestReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RoomGuestReservation() {
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
		int roomType=Integer.parseInt(request.getParameter("roomType"));
		
		
		room.setCheckIn(checkIn);
		room.setCheckOut(checkOut);
		room.setRoomTypeNo(roomType);
		
		request.setAttribute("room", room);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/RoomGuestReservation.jsp");
		dispatcher.forward(request, response);
	}

}
