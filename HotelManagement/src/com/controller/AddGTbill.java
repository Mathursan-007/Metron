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
 * Servlet implementation class AddGTbill
 */
@WebServlet("/AddGTbill")
public class AddGTbill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddGTbill() {
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
		GymReservation gt=new GymReservation();
		ExtraServiceImp extraserviceimplem=new ExtraServiceImp();
		
		gt.setRID(request.getParameter("id"));
		gt.setGpackageID(request.getParameter("sid"));
	    gt.setGpackagename(request.getParameter("name"));
	    gt.setRoomNo(request.getParameter("no"));
	    gt.setCusName(request.getParameter("cname"));
	    gt.setDate(request.getParameter("date"));
	     
		
	    
	    extraserviceimplem.addGtotal(gt);;
		 
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ExtraserviceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
