package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Spa;
import com.model.SpaReservation;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class UpdateSpaR
 */
@WebServlet("/UpdateSpaR")
public class UpdateSpaR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSpaR() {
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
		SpaReservation spar=new SpaReservation();
		ExtraServiceImp extraserviceimp=new ExtraServiceImp();

		spar.setRID(request.getParameter("rid"));
		spar.setSpackageID(request.getParameter("id"));
	    spar.setSpackagename(request.getParameter("name"));
	    spar.setRoomNo(Integer.parseInt(request.getParameter("no")));
	    spar.setCusName(request.getParameter("cname"));
	    spar.setDate(request.getParameter("date"));
	    spar.setTime(request.getParameter("time"));
		 
		
		
		
		extraserviceimp.updateSpaR(spar);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ListSpaR.jsp");
		dispatcher.forward(request, response);
	}

}
