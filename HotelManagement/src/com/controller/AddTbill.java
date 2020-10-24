package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.SpaReservation;
import com.service.ExtraServiceImp;

/**
 * Servlet implementation class AddTbill
 */
@WebServlet("/AddTbill")
public class AddTbill extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddTbill() {
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
		SpaReservation st=new SpaReservation();
		ExtraServiceImp extraserviceimple=new ExtraServiceImp();
		
		st.setRID(request.getParameter("id"));
		st.setSpackageID(request.getParameter("sid"));
	    st.setSpackagename(request.getParameter("name"));
	    st.setRoomNo(Integer.parseInt(request.getParameter("no")));
	    st.setCusName(request.getParameter("cname"));
	    st.setDate(request.getParameter("date"));
	    st.setStime(request.getParameter("stime"));
	    st.setEtime(request.getParameter("etime"));
		
	    extraserviceimple.addStotal(st);
		
		 
		
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ExtraserviceDashboard.jsp");
		dispatcher.forward(request, response);
	}

}
