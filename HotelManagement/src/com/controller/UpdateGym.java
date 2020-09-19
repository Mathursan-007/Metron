package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Gym;
import com.model.Spa;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class UpdateGym
 */
@WebServlet("/UpdateGym")
public class UpdateGym extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateGym() {
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
		Gym gym=new Gym();
		ExtraServiceImp extraserviceimp=new ExtraServiceImp();

		gym.setID(request.getParameter("id"));
		gym.setName(request.getParameter("name"));
		gym.setPrice(Float.parseFloat(request.getParameter("price")));
		
		
		
		
		extraserviceimp.updatepackage(gym);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Listgym.jsp");
		dispatcher.forward(request, response);
		
	}

}
