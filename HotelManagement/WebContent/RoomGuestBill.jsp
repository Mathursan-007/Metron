
<%@page import="java.awt.Color"%>
<%@page import="com.model.RoomBill"%>
<%@page import="com.model.Room"%>
<%@page import="sun.font.SunFontManager.FamilyDescription"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRoom" %>  
<%@ page import="com.service.RoomImpl"%>   
<%@ page import="com.model.GuestReservation" %>



<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%


	RoomImpl roomImpl = new RoomImpl();
	GuestReservation guestReservation = new GuestReservation();
	Room room = new Room();
	
	int RRIDs = Integer.parseInt(request.getParameter("rrid"));
	
	roomImpl.setReportDetails(room, guestReservation, RRIDs);
	
	float amount = roomImpl.getCustomerBill(RRIDs);


	response.setContentType("application/pdf");
	Document document = new Document();
	PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
	document.open();
	
	
	Font fTitle = new Font(Font.FontFamily.COURIER, 25, Font.BOLD);

	
	String Title="Bill details of " + guestReservation.getFullName();//guest name

	Paragraph p = new Paragraph(Title,fTitle);
	p.setAlignment(Element.ALIGN_CENTER);
	document.add(p);
	
	
	//RRID
	Font fReservation = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
	
	String txtReservation="Reservation ID : ";
	
	Paragraph p2 = new Paragraph(txtReservation,fReservation);
	p2.setSpacingBefore(30); //leave space before
	
	String RRID= guestReservation.getRoom_RID() + "";
	
	Font fRRID = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
	fRRID.setColor(BaseColor.BLUE);
	Paragraph p3 = new Paragraph(RRID,fRRID);
	p2.add(p3);
	p2.setAlignment(Element.ALIGN_CENTER);
	document.add(p2);

	
	//No of rooms
	Font fNoofRooms = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
	
	String txtNoOfRooms="Number of rooms booked : ";
	Paragraph p4 = new Paragraph(txtNoOfRooms,fNoofRooms);
	p4.setSpacingBefore(20); //leave space before
	
	String noOfRooms= guestReservation.getNo_Of_Rooms() + "";
	
	Font fnoOfRooms = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
	fnoOfRooms.setColor(BaseColor.BLUE);
	Paragraph p5 = new Paragraph(noOfRooms,fnoOfRooms);
	p4.add(p5);
	p4.setAlignment(Element.ALIGN_CENTER);
	document.add(p4);
	
	//Type of room
	Font fTypeofRooms = new Font(Font.FontFamily.COURIER, 15, Font.NORMAL);
	
	String txtTypeOfRooms="Type of rooms booked : ";
	Paragraph p6 = new Paragraph(txtTypeOfRooms,fTypeofRooms);
	p6.setSpacingBefore(20); //leave space before
	
	String typeOfRooms=room.getRoomTypeName();
	
	Font fTypeOfRooms1 = new Font(Font.FontFamily.UNDEFINED, 16, Font.BOLD);
	fTypeOfRooms1.setColor(BaseColor.BLUE);
	Paragraph p7 = new Paragraph(typeOfRooms,fTypeOfRooms1);
	p6.add(p7);
	p6.setAlignment(Element.ALIGN_CENTER);
	document.add(p6);
	
	//bill
	Font fBill = new Font(Font.FontFamily.COURIER, 20, Font.UNDERLINE);
	
	String txtBillTitle="BILL";
	Paragraph p8 = new Paragraph(txtBillTitle,fBill);
	p8.setSpacingBefore(20); //leave space before
	p8.setSpacingAfter(20);
	p8.setAlignment(Element.ALIGN_CENTER);
	document.add(p8);
	
	
	ArrayList<RoomBill> BillInfo = new ArrayList();
	
	BillInfo = roomImpl.getBillDetails(RRIDs);
	float total=0;
	int count=0;
	
	for(RoomBill roomBill:BillInfo) {
		
		Font fpayment;
		
		String paidStatus;
		Paragraph v;
		
	
		if(count==0) {
			paidStatus = "\tPaid";
			fpayment= new Font(Font.FontFamily.COURIER, 15, Font.ITALIC);
			fpayment.setColor(BaseColor.GREEN);
			v = new Paragraph(paidStatus,fpayment);
		} else {
			paidStatus = "\tYet to be paid";
			fpayment= new Font(Font.FontFamily.COURIER, 15, Font.ITALIC);
			fpayment.setColor(BaseColor.RED);
			v = new Paragraph(paidStatus,fpayment);
			total=total+roomBill.getAmount();
		}
		
		
		
		
		Font fBills = new Font(Font.FontFamily.COURIER, 16, Font.NORMAL);
		
		String txtBillType=roomBill.getBill_Type() + " : Rs. " + roomBill.getAmount();
		Paragraph p9 = new Paragraph(txtBillType,fBills);
		p9.setAlignment(Element.ALIGN_RIGHT);
		
		if(count==0) {
			p9.setIndentationRight(100);
			count++;
		} else {
			p9.setIndentationRight(10);
		}
		
		
		p9.add(v);
		document.add(p9);
	}
	
	
	Font fTotal = new Font(Font.FontFamily.COURIER, 14, Font.BOLDITALIC);
	fTotal.setColor(BaseColor.RED);
	String txtTotal="Total amount to be paid : Rs. " + total;
	Paragraph tot = new Paragraph(txtTotal,fTotal);
	tot.setAlignment(Element.ALIGN_CENTER);
	tot.setSpacingBefore(35);

	
	document.add(tot);
		
	
	document.close();
	
	
	
%>



</body>
</html>