package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Room;
import com.service.RestaurantImpl;
import com.service.RoomImpl;

/**
 * Servlet implementation class UpdateRoom
 */
@WebServlet("/UpdateRoom")
public class UpdateRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateRoom() {
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
		
		room.setRoomNo(request.getParameter("roomno"));
		room.setMaxGuests(Integer.parseInt(request.getParameter("MaxGuests")));
		room.setRoomTypeNo(Integer.parseInt(request.getParameter("roomType")));
		room.setRoomSize(request.getParameter("roomSize"));
		
		
		
		roomimpl.updateRoom(room);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ListRooms.jsp");
		dispatcher.forward(request, response);
	}

}
