package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.net.openssl.ciphers.Authentication;

import com.service.AuthenticationImpl;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		
		AuthenticationImpl authenticationImpl=new AuthenticationImpl();
		
		String un=request.getParameter("un");
		String pwd=request.getParameter("pwd");
		
		
		
		if(authenticationImpl.login(un, pwd)==true) {
		  if(un.equalsIgnoreCase("adminfrontdesk")) {
			  
			  RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("FrontDeskCards.jsp");
			  dispatcher.forward(request, response);
			  
		  }else if(un.equalsIgnoreCase("adminrestaurant")) {
			  
			  RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/RestaurantDashboard.jsp");
			  dispatcher.forward(request, response);
			  
		  }else if(un.equalsIgnoreCase("adminevent")) {
			  
			  RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EventDashboard.jsp");
			  dispatcher.forward(request, response);
			  
		  }	else if(un.equalsIgnoreCase("adminemployee")) {
			  
			  RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/EmployeeDashboard.jsp");
			  dispatcher.forward(request, response);
			  
		  }	else if(un.equalsIgnoreCase("admininventory")) {
			  
			  RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/InventoryDashboard.jsp");
			  dispatcher.forward(request, response);
			  
		  }	else if(un.equalsIgnoreCase("adminfinance")) {
			  
			  RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
			  dispatcher.forward(request, response);
		  
		  }		  
			
		}else 	if(authenticationImpl.login(un, pwd)==false) {
			
			//Boolean user=false;
			//request.setAttribute("user", user);
			RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/Login.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
