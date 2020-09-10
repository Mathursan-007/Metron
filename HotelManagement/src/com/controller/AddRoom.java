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
 * Servlet implementation class AddRoom
 */
@WebServlet("/AddRoom")
public class AddRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRoom() {
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
		
		room.setRoomNo(request.getParameter("roomNo"));
		room.setAvailability("Available");
		room.setRoomSize(request.getParameter("roomSize"));
		room.setMaxGuests(Integer.parseInt(request.getParameter("MaxGuests")));
		room.setRoomTypeNo(Integer.parseInt(request.getParameter("roomType")));
		
		roomimpl.addRoom(room);
		
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FrontDeskRoomDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
