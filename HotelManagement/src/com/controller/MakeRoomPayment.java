package com.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GuestReservation;
import com.model.RoomBill;
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
		RoomBill roomBill= new RoomBill();
		
		RoomImpl roomimpl=new RoomImpl();
		int GuestID=roomimpl.generateGuestID();
		int ReservationID=roomimpl.generateReservationID();
		int RoomBillID = roomimpl.generateBillId();
		System.out.println("Reservation ID" + ReservationID);
		
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
		roomimpl.addResrvationInfo(guestReservation,roomGuest);
		
		for(int i=0;i<RoomNumbers.length;i++) {
			roomimpl.addReservedRooms(ReservationID,RoomNumbers[i]);
		}
		
		
		//cost of room calculation
		float s = 0;
		String checkin=request.getParameter("checkIn");
		String checkout=request.getParameter("checkOut");
		int type=Integer.parseInt(request.getParameter("type"));
		int noOfRooms = RoomNumbers.length;
		
		s=roomimpl.getRoomCost(checkin, checkout, type, noOfRooms);
		
		/*
		SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
		 float daysBetween=0;

		 try {
		       java.util.Date dateBefore = myFormat.parse(checkin);
		       java.util.Date dateAfter = myFormat.parse(checkout);
		       long difference = dateAfter.getTime() - dateBefore.getTime();
		       daysBetween = (difference / (1000*60*60*24));
	               /* You can also convert the milliseconds to days using this method
	                * float daysBetween = 
	                *         TimeUnit.DAYS.convert(difference, TimeUnit.MILLISECONDS)
	                */
		   /*    
		 } catch (Exception e) {
		       e.printStackTrace();
		 }
		 
		 if(type==1) {
			 s=7500*daysBetween*RoomNumbers.length;
		 } else if(type==2) {
			 s=15000*daysBetween*RoomNumbers.length;
		 } else {
			 s=25000*daysBetween*RoomNumbers.length;
		 } */
		
		 roomBill.setBill_ID(RoomBillID);
		 roomBill.setBill_Type("Room Booking");
		 roomBill.setAmount(s);
		 roomBill.setRoom_RID(ReservationID);
		 
		 roomimpl.addBill(roomBill);
		 
		 
		 
		request.setAttribute("Amount", s);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/MakeRoomPayment.jsp");
		dispatcher.forward(request, response);
	}

}
