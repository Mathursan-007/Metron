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
 * Servlet implementation class AddPackage
 */
@WebServlet("/AddPackage")
public class AddPackage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPackage() {
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
		Package packages=new Package();

		ITransport  packageImpl =new TransportImpl();
		String Id=(request.getParameter("id"));
		packages.setId(request.getParameter("id"));
		packages.setPackageName(request.getParameter("packageName"));
		packages.setPrice((request.getParameter("price")));
		packages.setDescription(request.getParameter("description"));
		
		
		System.out.println("parse 1");
		packageImpl.insertPackage(packages);
		System.out.println("parse 2");

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
		dispatcher.forward(request, response);

	}

}
