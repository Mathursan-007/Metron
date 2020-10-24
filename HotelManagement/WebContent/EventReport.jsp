<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="com.model.EventReservation" %>
    <%@ page import="com.service.IEvent"%>
    <%@ page import="com.service.EventImpl"%>
  
    <%@page import="com.itextpdf.text.pdf.PdfWriter"%>
	<%@page import="com.itextpdf.text.Image"%>
	<%@page import="com.itextpdf.text.Font"%>
	<%@page import="com.itextpdf.text.Element"%>
	<%@page import="com.itextpdf.text.*"%>
	<%@page import="com.itextpdf.text.Paragraph"%>
	<%@page import="com.itextpdf.text.Document"%>
	<%@page import="com.itextpdf.text.pdf.PdfPTable"%>  
 	
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% EventImpl eventimpl = new EventImpl();
   EventReservation eventreservation = new EventReservation ();
   
   eventreservation = eventimpl.getEventReservation(Integer.parseInt(request.getParameter("eventid"))); 


   response.setContentType("application/pdf");
   Document document = new Document();
   PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
   document.open();

   Font fTitle = new Font(Font.FontFamily.COURIER, 25, Font.BOLD);
   Font f1Title = new Font(Font.FontFamily.COURIER, 15,Font.BOLD);
   Font f2Title = new Font(Font.FontFamily.COURIER, 15,Font.BOLD);
   Font f3Title = new Font(Font.FontFamily.COURIER, 20,Font.BOLD);
   Font f4Title = new Font(Font.FontFamily.COURIER, 15,Font.BOLD);
   

   String Title="Invoice - Venue Reservation"; //Title
   
  
   Paragraph p = new Paragraph(Title,fTitle);
   p.setAlignment(Element.ALIGN_CENTER);
   document.add(p);

   
   //Reservation ID
   Font f0Reservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txt0Reservation="Reservation ID : ";
   Paragraph p0 = new Paragraph(txt0Reservation,f0Reservation);
   p0.setSpacingBefore(30); //leave space before
   String ERID= eventreservation.getEventReservation_ID() + "";
   Font fERID = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   fERID.setColor(BaseColor.BLUE);
   Paragraph p1 = new Paragraph(ERID,fERID);
   p0.add(p1);
   p0.setAlignment(Element.ALIGN_CENTER);
   document.add(p0);
   
   
 //GuestName
   Font fReservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txtReservation="Guest Name : ";
   Paragraph p2 = new Paragraph(txtReservation,fReservation);
   p2.setSpacingBefore(30); //leave space before
   String RRID= eventreservation.getFullName() + "";
   Font fRRID = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   fRRID.setColor(BaseColor.BLUE);
   Paragraph p3 = new Paragraph(RRID,fRRID);
   p2.add(p3);
   p2.setAlignment(Element.ALIGN_CENTER);
   document.add(p2);
   
   
 //Event Name
   Font f1Reservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txt1Reservation="Event Name : ";
   Paragraph p5 = new Paragraph(txt1Reservation,f1Reservation);
   p5.setSpacingBefore(30); //leave space before
   String ename= eventreservation.getEventName() + "";
   Font fename = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   fename.setColor(BaseColor.BLUE);
   Paragraph p4 = new Paragraph(ename,fename);
   p5.add(p4);
   p5.setAlignment(Element.ALIGN_CENTER);
   document.add(p5);
   
   
   //Venue Type
   Font f2Reservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txt2Reservation="Venue Type : ";
   Paragraph p6 = new Paragraph(txt2Reservation,f2Reservation);
   p6.setSpacingBefore(30); //leave space before
   String etype= eventreservation.getVenue() + "";
   Font ftype = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   ftype.setColor(BaseColor.BLUE);
   Paragraph p7 = new Paragraph(etype,ftype);
   p6.add(p7);
   p6.setAlignment(Element.ALIGN_CENTER);
   document.add(p6);
   
   //Venue Price
   Font f3Reservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txt3Reservation="Venue Price : ";
   Paragraph p8 = new Paragraph(txt3Reservation,f3Reservation);
   p8.setSpacingBefore(30); //leave space before
   String eprice= eventreservation.getPrice() + "";
   Font fprice = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   fprice.setColor(BaseColor.BLUE);
   Paragraph p9 = new Paragraph(eprice,fprice);
   p8.add(p9);
   p8.setAlignment(Element.ALIGN_CENTER);
   document.add(p8);
   
   
   //Date
   Font f4Reservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txt4Reservation="Day Of Event : ";
   Paragraph p10 = new Paragraph(txt4Reservation,f4Reservation);
   p10.setSpacingBefore(30); //leave space before
   String edate= eventreservation.getDate() + "";
   Font fdate = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   fdate.setColor(BaseColor.BLUE);
   Paragraph p11 = new Paragraph(edate,fdate);
   p10.add(p11);
   p10.setAlignment(Element.ALIGN_CENTER);
   document.add(p10);
   
   //Hall ID
   Font f5Reservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
   String txt5Reservation="Hall ID : ";
   Paragraph p12 = new Paragraph(txt5Reservation,f5Reservation);
   p12.setSpacingBefore(30); //leave space before
   String ehall= eventreservation.getHallID() + "";
   Font fhall = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
   fhall.setColor(BaseColor.BLUE);
   Paragraph p13 = new Paragraph(ehall,fhall);
   p12.add(p13);
   p12.setAlignment(Element.ALIGN_CENTER);
   document.add(p12);
   
   
   String Title1="Customer Signature - ................ "; //Customer Signature
   
   Paragraph p14 = new Paragraph(Title1,f1Title);
   p14.setAlignment(Element.ALIGN_LEFT);
   p14.setSpacingBefore(30);
   document.add(p14);
   
   String Title2="Authorized By - ..................... "; //Manager Signature
   
   Paragraph p15 = new Paragraph(Title2,f2Title);
   p15.setAlignment(Element.ALIGN_LEFT);
   p15.setSpacingBefore(30);
   document.add(p15);
   
  String Title4="(Event Front Desk)"; 
   
   Paragraph p16 = new Paragraph(Title4,f4Title);
   p16.setAlignment(Element.ALIGN_LEFT);
   p16.setSpacingBefore(3);
   document.add(p16);
   
   String Title3="Thank you ! "; 
   
   Paragraph p17 = new Paragraph(Title3,f3Title);
   p17.setAlignment(Element.ALIGN_CENTER);
   p17.setSpacingBefore(30);
   document.add(p17);
   
   
  
   document.close();





%>



</body>
</html>