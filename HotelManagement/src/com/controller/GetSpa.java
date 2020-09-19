package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Item;
import com.model.Spa;
import com.service.ExtraServiceImp;
import com.service.RestaurantImpl;

/**
 * Servlet implementation class GetSpa
 */
@WebServlet("/GetSpa")
public class GetSpa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetSpa() {
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
		String id=(request.getParameter("id"));
		 ExtraServiceImp spaimp=new ExtraServiceImp();
		Spa spa=new Spa();
		 spa=spaimp.getpackage(id);
		
		request.setAttribute("item",spa);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/GetSpa.jsp");
		dispatcher.forward(request, response);
		
	}

}
