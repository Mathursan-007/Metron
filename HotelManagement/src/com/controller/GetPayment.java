package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Payment;

import com.service.ITransport;
import com.service.TransportImpl;



/**
 * Servlet implementation class GetPayment
 */
@WebServlet("/GetPayment")
public class GetPayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetPayment() {
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
int id=(Integer.parseInt(request.getParameter("id")));
		
		ITransport paymentImpl=new TransportImpl();
		Payment payment=new Payment();
		payment=paymentImpl.GetPayment(id);

		request.setAttribute("payment", payment);

		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/PaymentEdit.jsp");
		dispatcher.forward(request, response);
	}

}
