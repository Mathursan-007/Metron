<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="sun.font.SunFontManager.FamilyDescription"%>
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
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.service.IRestaurant" %>  
<%@ page import="com.service.RestaurantImpl"%>   
<%@ page import="com.model.Item" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>kot</title>
</head>
<body>
<%
				
                int orderid=(int)request.getAttribute("orderid");
                int tot=0;


				IRestaurant irestaurantservice3=new RestaurantImpl();
				ArrayList<Item> Items2=new ArrayList<>();
				Items2=irestaurantservice3.printbill(orderid);
				                

                response.setContentType("application/pdf");
                
				Rectangle pageSize = new Rectangle(600,500);
				Document document = new Document(pageSize);
				PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());
			
				document.open();
				
				
				Font topic = new Font(Font.FontFamily.TIMES_ROMAN, 20, Font.BOLD);
				Font subtopic = new Font(Font.FontFamily.TIMES_ROMAN, 18, Font.BOLD);
				//Phrase title = new Phrase("METRON",topic);
				Phrase subtitle = new Phrase("KOT",subtopic);
				
				
				Paragraph p = new Paragraph();
		        p.add(subtitle);
		        p.setAlignment(Element.ALIGN_CENTER);
		        document.add(p);
		        document.add( Chunk.NEWLINE );
				document.add( Chunk.NEWLINE );
				document.add(new Paragraph("                  "+"Order No:"+orderid));
				document.add(new Paragraph("                  "+"Date&Time:"+new Date().toString()));
				document.add(new Paragraph("               -------------------------------------------------------------------------------------------------- "));
		        
		        
				 Font f = new Font();
		         f.setStyle(Font.BOLD);
		         f.setSize(12);
		        
		         
		         
		        Paragraph name=new Paragraph("ITEM                                                                  QUANTITY",f); 
		        name.setIndentationLeft(65);
	             
		       
		        document.add(name);
		      
		        
		        float [] pointColumnWidths = {1f, 1f, 1f};   
		        PdfPTable table = new PdfPTable(pointColumnWidths);
		        table.getDefaultCell().setBorder(0);
		        
				
				
			for(Item item:Items2){
				
                  Paragraph txt1=new Paragraph(item.getName()); 				
				  Paragraph qty=new Paragraph(String.valueOf(item.getQty()));
			
	               		
				    table.addCell(txt1);
			        table.addCell("x");
			        table.addCell(qty);
			        
                 
                
				  tot+=item.getQty();
				
				}
			    
			    document.add(table);
				document.add(new Paragraph("                -------------------------------------------------------------------------------------------------- "));
				
				 Paragraph txt3=new Paragraph("Total Number of Items:"+"                                           "+String.valueOf(tot),f); 
			       
			     txt3.setAlignment(Element.ALIGN_LEFT);
			     txt3.setIndentationLeft(60);
			   
			     document.add(txt3);
				
				document.add( Chunk.NEWLINE );
				document.add( Chunk.NEWLINE );
				
				document.close();
				


%>
</body>
</html>