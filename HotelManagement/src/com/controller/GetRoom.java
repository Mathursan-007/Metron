package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Item;
import com.model.Room;
import com.service.RestaurantImpl;
import com.service.RoomImpl;

/**
 * Servlet implementation class GetRoom
 */
@WebServlet("/GetRoom")
public class GetRoom extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetRoom() {
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
		String roomNo=request.getParameter("roomno");
		RoomImpl roomimpl=new RoomImpl();
		Room room=new Room();
		room=roomimpl.getRoom(roomNo);
		room.setDashboardVal(2);
		
		
		request.setAttribute("room", room);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FrontDeskRoomDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
