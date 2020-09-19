package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.GymReservation;
import com.model.SpaReservation;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class AddGymR
 */
@WebServlet("/AddGymR")
public class AddGymR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGymR() {
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
		GymReservation gymr=new GymReservation();
		ExtraServiceImp serviceimp=new ExtraServiceImp();
		
		gymr.setRID(request.getParameter("rid"));
		gymr.setGpackageID(request.getParameter("id"));
	    gymr.setGpackagename(request.getParameter("name"));
	    gymr.setRoomNo(Integer.parseInt(request.getParameter("no")));
	    gymr.setCusName(request.getParameter("cname"));
	    gymr.setDate(request.getParameter("date"));
	    gymr.setTime(request.getParameter("time"));
		 
		
		serviceimp.addGymReservation(gymr);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ExtraserviceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
