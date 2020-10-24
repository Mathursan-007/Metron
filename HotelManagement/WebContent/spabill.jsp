
<%@page import="java.awt.Color"%>
<%@page import="com.model.*"%>
 
<%@page import="sun.font.SunFontManager.FamilyDescription"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.awt.Color"%>
<%@page import="com.model.*"%>
 
<%@page import="sun.font.SunFontManager.FamilyDescription"%>


<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.*" %> 
<%@page import="java.text.DateFormat" %> 
<%@page import="java.text.SimpleDateFormat" %>    
<%@page import="java.util.Date" %>  
<%@page import="java.util.Calendar" %>  
 



<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%

		 

		
	 
String customername=(request.getParameter("cname"));

	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
	document.open();
	
	
	Font fTitle = new Font(Font.FontFamily.COURIER, 45, Font.BOLD);

	
	String Title="SPA BILL"; 

	Paragraph p = new Paragraph(Title,fTitle);
	p.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	
	
	Date date = Calendar.getInstance().getTime();  
    DateFormat dateFormat = new SimpleDateFormat("dd MMMM yyyy");  
    String strDate = dateFormat.format(date);  
	
    Font fdate = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);

	
	String cdate=strDate; 

	Paragraph p2 = new Paragraph(cdate,fdate);
	p2.setSpacingBefore(60);
	p2.setAlignment(Element.ALIGN_LEFT);
	document.add(p2); 
	
	Font fcusname = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);

	
	String cusname="Customer Name:"+" "+customername; 

	Paragraph p1 = new Paragraph(cusname,fcusname);
	p1.setSpacingBefore(30);
	p1.setAlignment(Element.ALIGN_LEFT);
	document.add(p1); 	
	
	 
	String line="--------------------------------------------------------------------------------------------"; 

	Paragraph p3 = new Paragraph(line);
	p3.setSpacingBefore(30);
	p3.setAlignment(Element.ALIGN_CENTER);
	document.add(p3); 
	
    Font frid = new Font(Font.FontFamily.COURIER, 15, Font.BOLD);

	
	String id="       "+"ReservationID:"+"                   "+(request.getParameter("rid")); 

	Paragraph p4 = new Paragraph(id,frid);
	p4.setSpacingBefore(30);
	p4.setAlignment(Element.ALIGN_LEFT);
	document.add(p4); 	
	
	 Font fpname = new Font(Font.FontFamily.COURIER, 15, Font.BOLD);

		
		String pname="       "+"Package Name:"+"                   "+(request.getParameter("name")); 

		Paragraph p5 = new Paragraph(pname,fpname);
		p5.setSpacingBefore(30);
		p5.setAlignment(Element.ALIGN_LEFT);
		document.add(p5);
		
		String eline="--------------------------------------------------------------------------------------------"; 

		Paragraph p6 = new Paragraph(eline);
		p6.setSpacingBefore(30);
		p6.setAlignment(Element.ALIGN_CENTER);
		document.add(p6); 
	
		
		 Font famount = new Font(Font.FontFamily.COURIER, 15, Font.BOLD);

			
			String amount="Total Bill:"+"                   "+(request.getParameter("amount")); 

			Paragraph p7 = new Paragraph(amount,famount);
			p7.setSpacingBefore(30);
			p7.setAlignment(Element.ALIGN_CENTER);
			document.add(p7);
			
	  
 
	/*Font fReservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
	
	String txtReservation="Reservation ID : ";
	Paragraph p2 = new Paragraph(txtReservation,fReservation);
	p2.setSpacingBefore(30); //leave space before
	
	String RRID= (request.getParameter("rid")) + "";
	
	Font fRRID = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
	fRRID.setColor(BaseColor.BLUE);
	Paragraph p3 = new Paragraph(RRID,fRRID);
	p2.add(p3);
	p2.setAlignment(Element.ALIGN_RIGHT);
	document.add(p2);

	 
	
	 
	Font fTypeofRooms = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
	
	String txtTypeOfRooms="Package Name : ";
	Paragraph p6 = new Paragraph(txtTypeOfRooms,fTypeofRooms);
	p6.setSpacingBefore(20); //leave space before
	
	String typeOfRooms=(request.getParameter("name")) ;
	
	Font fTypeOfRooms1 = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
	fTypeOfRooms1.setColor(BaseColor.BLUE);
	Paragraph p7 = new Paragraph(typeOfRooms,fTypeOfRooms1);
	p6.add(p7);
	p6.setAlignment(Element.ALIGN_CENTER);
	document.add(p6);
	
	//bill
	Font fbill = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
	
	String txtbill="Total Amount : ";
	Paragraph p8 = new Paragraph(txtbill,fbill);
	p6.setSpacingBefore(20); //leave space before
	
	String amount=(request.getParameter("amount")) ;
	
	Font fbill2 = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
	fTypeOfRooms1.setColor(BaseColor.BLUE);
	Paragraph p9 = new Paragraph(amount,fbill2);
	p8.add(p9);
 
	document.add(p8);*/
	 
	
	document.close();
	
	
	
%>
</body>
</html>