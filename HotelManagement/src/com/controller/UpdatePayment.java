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
 * Servlet implementation class UpdatePayment
 */
@WebServlet("/UpdatePayment")
public class UpdatePayment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePayment() {
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
		Payment payment=new Payment();

		ITransport  paymentImpl =new TransportImpl();
		
		payment.setId(Integer.parseInt(request.getParameter("id")));
		payment.setTid(Integer.parseInt(request.getParameter("tid")));
		payment.setTtype(request.getParameter("ttype"));
		payment.setCustomerName(request.getParameter("customerName"));
		payment.setAmount(Float.parseFloat(request.getParameter("amount")));
		payment.setPmethod(request.getParameter("pmethod"));
		System.out.println("parse 1");
		paymentImpl.insertPayment(payment);
		System.out.println("parse 2");
	paymentImpl.UpdatePayment(payment);

	RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/TransportDashboard.jsp");
	dispatcher.forward(request, response);
	

}
}