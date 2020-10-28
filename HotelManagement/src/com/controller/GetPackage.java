package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Package;

import com.service.ITransport;
import com.service.TransportImpl;

/**
 * Servlet implementation class GetPackage
 */
@WebServlet("/GetPackage")
public class GetPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPackage() {
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
		
		ITransport packageimpl=new TransportImpl();
		Package packages=new Package();
		packages=packageimpl.GetPackage(id);

		request.setAttribute("packages", packages);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/PackageEdit.jsp");
		dispatcher.forward(request, response);
		
	}

}
