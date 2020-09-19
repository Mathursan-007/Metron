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
 * Servlet implementation class GetSpaR
 */
@WebServlet("/GetSpaR")
public class GetSpaR extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSpaR() {
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
		String rid=(request.getParameter("id"));
		 ExtraServiceImp spaimp=new ExtraServiceImp();
		SpaReservation spar=new SpaReservation();
		 spar=spaimp.getSID(rid);
		
		request.setAttribute("rid",spar);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/GetSpaR.jsp");
		dispatcher.forward(request, response);
		
	}

}
