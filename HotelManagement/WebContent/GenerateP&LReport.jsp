<%@page import="java.util.ArrayList"%>

<%@ page import="com.service.IFinance" %>  
<%@ page import="com.service.FinanceImpl"%>  
<%@ page import="com.model.Income" %>
<%@ page import="com.model.Expense" %>


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
<%@page import="com.itextpdf.text.FontFactory"%>
<%@page import="com.itextpdf.text.BaseColor"%>
<%@page import="com.itextpdf.text.pdf.PdfPCell"%>



 
  




<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Income Statement</title>
</head>
<body>

<%response.setContentType("application/pdf");

ArrayList<Income> income=new ArrayList<>(); 
ArrayList<Expense> expense=new ArrayList<>();

String Start_date=request.getParameter("Start_Date");
String End_date=request.getParameter("End_Date");


FinanceImpl financeImpl = new FinanceImpl();

income = financeImpl.generateIncome(Start_date,End_date);

expense = financeImpl.generateExpense(Start_date,End_date);
float TotalIncome=0, TotalExpense=0;

Document document = new Document();



PdfWriter writer=PdfWriter.getInstance(document, response.getOutputStream());

document.open();

document.add(new Paragraph("Metron",FontFactory.getFont(FontFactory.TIMES_BOLD ,18,Font.BOLD,BaseColor.RED)));

Paragraph p = new Paragraph();
Paragraph p1 = new Paragraph();
p.add("INCOME STATEMENT FOR THE YEAR ENDED 2020");
p.setAlignment(Element.ALIGN_CENTER);
p1.add("                   ");
p1.setAlignment(Element.ALIGN_CENTER);
document.add(p);
document.add(p1);


float[] colsWidth = {2f, 1f, 1f};



Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);
Font boldFont1 = new Font(Font.FontFamily.TIMES_ROMAN, 13, Font.BOLD,BaseColor.RED);
Font boldFont2 = new Font(Font.FontFamily.TIMES_ROMAN, 13, Font.BOLD,BaseColor.BLUE);

PdfPTable table1 = new PdfPTable(colsWidth);



table1.setWidthPercentage(100); 
table1.setHorizontalAlignment(Element.ALIGN_LEFT);




//Headings

Phrase Description = new Phrase("Description", boldFont );
Phrase Amount = new Phrase("Amount", boldFont );
Phrase Amount1 = new Phrase("Amount", boldFont );
Phrase TxtIncome = new Phrase("Income", boldFont2 );
Phrase TxtExpense = new Phrase("Expense", boldFont2 );
Phrase TxtIncomeTotal = new Phrase("Total Income", boldFont );
Phrase TxtExpenseTotal = new Phrase("Total Expense", boldFont );
Phrase TxtProfit = new Phrase("Net Profit", boldFont1 );
Phrase TxtLoss = new Phrase("Net Loss", boldFont1 );


		PdfPCell cell = new PdfPCell();
        PdfPCell cell1 = new PdfPCell();
        PdfPCell cell2 = new PdfPCell();
        PdfPCell cell3 = new PdfPCell();
        PdfPCell cell4 = new PdfPCell();
        PdfPCell cell5 = new PdfPCell();
        PdfPCell cell6 = new PdfPCell();
        PdfPCell cell7 = new PdfPCell();
        PdfPCell cell8 = new PdfPCell();


        cell.addElement(Description);
        cell.setFixedHeight(25);
        cell.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table1.addCell(cell);
        
        cell1.addElement(Amount);
        cell1.setFixedHeight(25);
        cell1.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table1.addCell(cell1);

        cell2.addElement(Amount1);
        cell2.setFixedHeight(25);
        cell2.setBackgroundColor(BaseColor.LIGHT_GRAY);
        table1.addCell(cell2);
        
        
        
        
        


        
 cell3.addElement(TxtIncome);
 cell3.setFixedHeight(25);        
 table1.addCell(cell3);       

table1.addCell("");
table1.addCell("");



for(Income inc:income) {
	TotalIncome=TotalIncome+inc.getAmount();
	
	table1.addCell(inc.getCategory());
	table1.addCell(inc.getAmount()+"");
	table1.addCell("");	
}



cell4.addElement(TxtIncomeTotal);
cell4.setFixedHeight(25); 
cell4.setBackgroundColor(BaseColor.LIGHT_GRAY);
table1.addCell(cell4);

table1.addCell("");
table1.addCell(TotalIncome+"");



cell5.addElement(TxtExpense);
cell5.setFixedHeight(25);        
table1.addCell(cell5);


table1.addCell("");
table1.addCell("");



for(Expense exp:expense) {
	TotalExpense=TotalExpense+exp.getAmount();
	
	table1.addCell(exp.getCategory());
	table1.addCell(exp.getAmount()+"");
	table1.addCell("");	
}

cell6.addElement(TxtExpenseTotal);
cell6.setFixedHeight(25); 
cell6.setBackgroundColor(BaseColor.LIGHT_GRAY);
table1.addCell(cell6);

table1.addCell("");
table1.addCell(TotalExpense+"");



float value=TotalIncome-TotalExpense;
if(value>=0) {
	cell7.addElement(TxtProfit);
	cell7.setFixedHeight(25);        
	table1.addCell(cell7);

	table1.addCell("");
	table1.addCell(value+"");

}else
{
	cell8.addElement(TxtLoss);
	cell8.setFixedHeight(25);        
	table1.addCell(cell8);
	
	table1.addCell("");
	table1.addCell(value+"");
}


document.add(table1);



document.close();

%>



</body>
</html>