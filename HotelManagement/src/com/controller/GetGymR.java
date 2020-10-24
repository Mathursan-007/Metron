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
 * Servlet implementation class GetGymR
 */
@WebServlet("/GetGymR")
public class GetGymR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetGymR() {
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
		String gid=(request.getParameter("id"));
		 ExtraServiceImp spaimpl=new ExtraServiceImp();
		GymReservation gymr=new GymReservation();
		 
		gymr=spaimpl.getGID(gid);
		
		request.setAttribute("gid",gymr);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/GetGymR.jsp");
		dispatcher.forward(request, response);
	}

}
