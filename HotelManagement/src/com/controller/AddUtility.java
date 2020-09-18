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
 * Servlet implementation class AddInventory
 */
@WebServlet("/AddUtility")
public class AddUtility extends HttpServlet {
private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddUtility() {
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


Utility utility = new Utility();
utility.setPayment_ID(Integer.parseInt(request.getParameter("paymentID")));
utility.setDescription(request.getParameter("description"));
utility.setAmount(Float.parseFloat(request.getParameter("amount")));
utility.setDate(request.getParameter("Date"));



IUtility iUtility = new UtilityImpl();
iUtility.AddUtility(utility);


RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/FinanceDashboard.jsp");
dispatcher.forward(request, response);

}

}