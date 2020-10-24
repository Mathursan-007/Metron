<%@page import="java.io.File"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.service.IInventory" %>  
<%@ page import="com.service.InventoryImpl"%>   
<%@ page import="com.model.Inventory" %>  
<%@ page import="com.util.DBConnection" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="com.itextpdf.text.pdf.PdfWriter"%>
<%@page import="com.itextpdf.text.Font"%>
<%@page import="com.itextpdf.text.Element"%>
<%@page import="com.itextpdf.text.*"%>
<%@page import="com.itextpdf.text.Paragraph"%>
<%@page import="com.itextpdf.text.pdf.PdfPTable"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>
<%@page import="com.itextpdf.text.Document"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<% 
		response.setContentType("application/pdf");
	
		ArrayList<Inventory> inventory=new ArrayList<>();
		InventoryImpl inventoryImpl = new InventoryImpl();
		
		inventory = inventoryImpl.GenerateInventoryReport();
				
		Document document = new Document();
		
		PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());

		document.open();
		
		Paragraph p = new Paragraph("Inventory : Metron",FontFactory.getFont(FontFactory.TIMES_BOLD ,19,Font.BOLD,BaseColor.RED));
		Paragraph ps = new Paragraph();
		Font f = new Font();
		PdfPCell cell =new PdfPCell();
		
		p.setAlignment(Element.ALIGN_CENTER);
		ps.add("       ");
		ps.setAlignment(Element.ALIGN_CENTER);
		document.add(p);
		document.add(ps);

		
		float[] colsWidth = {1f, 1f, 1f, 1f};
		
		Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 13, Font.BOLD);

		PdfPTable table1 = new PdfPTable(colsWidth);

		table1.setWidthPercentage(100); 
		table1.setHorizontalAlignment(Element.ALIGN_LEFT);
		table1.setSpacingAfter(50f);
		//Headings
		Phrase AssetID = new Phrase("Asset ID", boldFont );
		Phrase AssetName = new Phrase("Asset Name", boldFont );
		Phrase AvailableQty = new Phrase("Available Stock", boldFont );
		Phrase TotalQty = new Phrase("Total Received Stock", boldFont );
		
		
		cell = new PdfPCell();
		PdfPCell cell1 = new PdfPCell();
		PdfPCell cell2 = new PdfPCell();
		PdfPCell cell3 = new PdfPCell();

		cell.addElement(AssetID);
		cell.setFixedHeight(25);
		cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
		table1.addCell(cell);
		
		cell1.addElement(AssetName);
		cell1.setFixedHeight(25);
		cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
		table1.addCell(cell1);
		
		cell2.addElement(AvailableQty);
		cell2.setFixedHeight(25);
		cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
		table1.addCell(cell2);
		
		cell3.addElement(TotalQty);
		cell3.setFixedHeight(25);
		cell3.setBackgroundColor(BaseColor.LIGHT_GRAY);
		table1.addCell(cell3);
		
		for(Inventory ast:inventory){	

			table1.addCell(ast.getAssetID());
			table1.addCell(ast.getAssetName());
			table1.addCell(ast.getAvailableQuantity()+"");
			table1.addCell(ast.getTotalQuantity()+"");

		} 
		
		document.add(table1);
		
		document.close();

	%>
	
		
	
	
	

</body>
</html>