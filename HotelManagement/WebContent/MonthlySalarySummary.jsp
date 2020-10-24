<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.EmployeeImpl" %>
<%@ page import="com.model.Salary" %>
<%@ page import="com.model.Employee" %>
    
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Image"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.Document"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> Monthly Salary Summary </title>
</head>
<body>

	<% 
	  Salary salary=new Salary();
	  salary = (Salary)request.getAttribute("salary");
	  ArrayList<Salary> summary=new ArrayList<>();
      summary= salary.getSummary();
	  
	  response.setContentType("application/pdf");
	  Rectangle pageSize = new Rectangle(600,500);
	  Document document = new Document(pageSize);
	  PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
	  document.open();
	  
	
      Font subtopic = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
      Phrase subtitle = new Phrase("Salary Summary",subtopic);
     
    
      Paragraph p = new Paragraph();
      p.add(subtitle);
      p.setAlignment(Element.ALIGN_CENTER);
      document.add(p);
      document.add( Chunk.NEWLINE );
      document.add( Chunk.NEWLINE ); 
      //document.add(new Paragraph("                  "+"Full Name : "+salary.getFname()));
      document.add(new Paragraph("                  "+"Date&Time : "+new Date().toString()));
      document.add( Chunk.NEWLINE );
      document.add( Chunk.NEWLINE ); 

      
      Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
      
      float [] pointColumnWidths = {1f, 1f, 1f, 1f, 1f};  
      
      Phrase h1 = new Phrase("Employee Id", boldFont );
      Phrase h2 = new Phrase("Basic Salary", boldFont );
      Phrase h3 = new Phrase("Overtime amount", boldFont );
      Phrase h4 = new Phrase("Leave deduction", boldFont );
      Phrase h5 = new Phrase("NetSalary", boldFont );

      PdfPTable table = new PdfPTable(pointColumnWidths);
      table.addCell(h1);
      table.addCell(h2);
      table.addCell(h3);
      table.addCell(h4);
      table.addCell(h5);

      
      
	  
		for(Salary sal:summary){ 
			
				table.addCell(String.valueOf(sal.getEmpid()));
                table.addCell(String.valueOf(sal.getBasicSal()));
                table.addCell(String.valueOf(sal.getOvertime()));
                table.addCell(String.valueOf(sal.getLeave()));
                table.addCell(String.valueOf(sal.getTotSalary()));
		
		}
		document.add(table);

		document.add( Chunk.NEWLINE );
		document.add( Chunk.NEWLINE );
		document.add( Chunk.NEWLINE );
		
		document.add( Chunk.NEWLINE );
		PdfPTable table2 = new PdfPTable(pointColumnWidths);
		table2.getDefaultCell().setBorder(0);
		table2.addCell(" ");
		table2.addCell(" ");
		table2.addCell(" ");
		table2.addCell("-------------------------");
		document.add( Chunk.NEWLINE );
		table2.addCell(" ");
		table2.addCell(" ");
		table2.addCell(" ");
		table2.addCell("    Manager");
	

		document.add(table2);
		document.close();
		
		
	%>

</body>
</html>