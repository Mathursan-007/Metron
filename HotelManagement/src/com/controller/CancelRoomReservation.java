package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.RoomImpl;

/**
 * Servlet implementation class CancelRoomReservation
 */
@WebServlet("/CancelRoomReservation")
public class CancelRoomReservation extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CancelRoomReservation() {
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
		roomimpl.cancelReservation(Integer.parseInt(request.getParameter("rrid")));
		
		
		request.setAttribute("value", 3);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FrontDeskRoomDashboard.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
