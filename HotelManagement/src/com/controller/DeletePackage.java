package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.service.ITransport;
import com.service.TransportImpl;

/**
 * Servlet implementation class DeletePackage
 */
@WebServlet("/DeletePackage")
public class DeletePackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeletePackage() {
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
			TransportImpl packageimpl=new TransportImpl();
			packageimpl.DeletePackage(id);

			request.setAttribute("value", 1);

			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/TransportDashboard.jsp");

			dispatcher.forward(request, response);
	}

}
