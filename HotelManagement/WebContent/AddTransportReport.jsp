<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.model.Payment" %>  
<%@ page import="com.service.TransportImpl"%> 
<%@ page import="com.service.ITransport"%>  
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfDocument"%>
<%@page import="java.io.File"%>
<%@page import="com.itextpdf.text.pdf.PdfPage"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="java.net.URL"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Phrase"%>
<%@page import="com.itextpdf.text.Chunk"%>
<%@page import="com.itextpdf.text.Rectangle"%>
<%@page import="com.itextpdf.text.pdf.PdfContentByte"%>
<%@page import="com.itextpdf.text.pdf.BaseFont"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
 
<!DOCTYPE html>
<html>

<head>

<meta charset="ISO-8859-1">
    <title>Packages</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
</head>

<body>

  
              <%
              ITransport paymentImpl=new TransportImpl();
              ArrayList<Payment> Payments=new ArrayList<>();
             Payments=paymentImpl.listPayments();
             
                                    
                          
             
             response.setContentType("application/pdf");
             
             Document document = new Document();
             PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
             //PdfWriter.getInstance(document, response.getOutputStream());
             document.open();
             
             
             float[] colsWidth = {1f, 1f, 1f,1f};
             
             Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
             PdfPTable table1 = new PdfPTable(colsWidth);
             table1.setWidthPercentage(100); // Code 2
             table1.setHorizontalAlignment(Element.ALIGN_CENTER);//Code 3
             
             
             //heading
             Phrase h1 = new Phrase("Payment ID", boldFont);
			 Phrase h2 = new Phrase("Trip ID", boldFont);
			 Phrase h3 = new Phrase("Trip Type", boldFont);
			 Phrase h4 = new Phrase("Amount", boldFont);
			
			 table1.addCell(h1);
			 table1.addCell(h2);
			 table1.addCell(h3);
			 table1.addCell(h4);
			
			 float amount=0;
			 
			for(Payment payment:Payments)
            {
				
				table1.addCell(String.valueOf(payment.getId()));
				table1.addCell(String.valueOf(payment.getTid()));
				table1.addCell(payment.getTtype());
				table1.addCell(String.valueOf(payment.getAmount()));
				
                amount=amount+payment.getAmount();
                                                   
            }     
			
			Paragraph p = new Paragraph();
			p.add("Total Cost : " + amount);
			Font f = new Font();
			f.setStyle(Font.BOLD);
			f.setSize(8);
			
			p.setAlignment(Element.ALIGN_RIGHT);
			
			
			
             document.add(table1);
             
             document.add(p);
             
             document.close();
             
             
             %>
                                        
                                        
                                    

</body>


</html>
