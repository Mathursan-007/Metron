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

	
	String Title="GYM BILL"; 

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

			document.close();
			
			
			
			%>
			</body>
			</html>