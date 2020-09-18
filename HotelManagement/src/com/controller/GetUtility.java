package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Utility;
import com.service.IUtility;
import com.service.UtilityImpl;


/**
 * Servlet implementation class GetUtility
 */
@WebServlet("/GetUtility")
public class GetUtility extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetUtility() {
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
		
		
		int Payment_ID = (Integer.parseInt(request.getParameter("Payment_ID")));
		System.out.println(Payment_ID);
		IUtility utilityImpl=new UtilityImpl();
		Utility utility=new Utility();
		utility=utilityImpl.GetUtility(Payment_ID);
		
		
		
		request.setAttribute("utility", utility);
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EditUtility.jsp");
		dispatcher.forward(request, response);
	}

}
