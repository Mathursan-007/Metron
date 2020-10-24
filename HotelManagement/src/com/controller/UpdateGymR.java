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
 * Servlet implementation class UpdateGymR
 */
@WebServlet("/UpdateGymR")
public class UpdateGymR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGymR() {
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
		GymReservation gr=new GymReservation();
		ExtraServiceImp extraservicei=new ExtraServiceImp();

		gr.setRID(request.getParameter("rid"));
		gr.setGpackageID(request.getParameter("id"));
	    gr.setGpackagename(request.getParameter("name"));
	    gr.setRoomNo(Integer.parseInt(request.getParameter("no")));
	    gr.setCusName(request.getParameter("cname"));
	    gr.setDate(request.getParameter("date"));
	    
	    extraservicei.updateGymR(gr);
	    
	    RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ExtraserviceDashboard.jsp");
		dispatcher.forward(request, response);
 
	}

}
