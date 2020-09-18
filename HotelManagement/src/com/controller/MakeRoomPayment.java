package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GuestReservation;
import com.model.RoomGuest;
import com.service.RoomImpl;

/**
 * Servlet implementation class MakeRoomPayment
 */
@WebServlet("/MakeRoomPayment")
public class MakeRoomPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MakeRoomPayment() {
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
		
		GuestReservation guestReservation=new GuestReservation();
		RoomGuest roomGuest=new RoomGuest();
		
		RoomImpl roomimpl=new RoomImpl();
		int GuestID=roomimpl.generateGuestID();
		int ReservationID=roomimpl.generateReservationID();
		
		roomGuest.setHGuest_ID(GuestID);
		roomGuest.setNIC(request.getParameter("NIC"));
		roomGuest.setFull_Name(request.getParameter("fullName"));
		roomGuest.setEmail(request.getParameter("email"));
		roomGuest.setContact(request.getParameter("contact"));
		
		roomimpl.addGuest(roomGuest);
		
		String [] RoomNumbers = request.getParameterValues("roomsArray");

		guestReservation.setRoom_RID(ReservationID);
		guestReservation.setNo_Of_Rooms(RoomNumbers.length);
		guestReservation.setNo_Of_Guests(Integer.parseInt(request.getParameter("MaxGuests")));
		guestReservation.setCheckIn(request.getParameter("checkIn"));
		guestReservation.setCheckOut_Date(request.getParameter("checkOut"));
		guestReservation.setHGuest_ID(GuestID);
		
		roomimpl.addReservation(guestReservation);
		
		for(int i=0;i<RoomNumbers.length;i++) {
			roomimpl.addReservedRooms(ReservationID,RoomNumbers[i]);
		}
		
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/MakeRoomPayment.jsp");
		dispatcher.forward(request, response);
	}

}
