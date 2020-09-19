package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Spa;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class UpdateSpa
 */
@WebServlet("/UpdateSpa")
public class UpdateSpa extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateSpa() {
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
		
		Spa spa=new Spa();
		ExtraServiceImp extraserviceimp=new ExtraServiceImp();

		spa.setID(request.getParameter("id"));
		spa.setName(request.getParameter("name"));
		spa.setPrice(Float.parseFloat(request.getParameter("price")));
		
		
		
		
		extraserviceimp.updatepackage(spa);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ListSpa.jsp");
		dispatcher.forward(request, response);
		
	}

}
