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


FinanceImpl financeImpl = new FinanceImpl();

income = financeImpl.generateIncome("2020-01-01", "2020-12-31");

expense = financeImpl.generateExpense("2020-01-01", "2020-12-31");
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


float[] colsWidth = {1f, 1f, 1f};



Font boldFont = new Font(Font.FontFamily.TIMES_ROMAN, 12, Font.BOLD);

PdfPTable table1 = new PdfPTable(colsWidth);



table1.setWidthPercentage(100); 
table1.setHorizontalAlignment(Element.ALIGN_LEFT);




//Headings

Phrase Description = new Phrase("Description", boldFont );
Phrase Amount = new Phrase("Amount", boldFont );
Phrase Amount1 = new Phrase("Amount", boldFont );
Phrase TxtIncome = new Phrase("Income", boldFont );
Phrase TxtExpense = new Phrase("Expense", boldFont );
Phrase TxtIncomeTotal = new Phrase("Total Income", boldFont );
Phrase TxtExpenseTotal = new Phrase("Total Expense", boldFont );
Phrase TxtProfit = new Phrase("Net Profit", boldFont );
Phrase TxtLoss = new Phrase("Net Loss", boldFont );

table1.addCell(Description);
table1.addCell(Amount);
table1.addCell(Amount1);


table1.addCell(TxtIncome);
table1.addCell("");
table1.addCell("");

for(Income inc:income) {
	TotalIncome=TotalIncome+inc.getAmount();
	
	table1.addCell(inc.getCategory());
	table1.addCell(inc.getAmount()+"");
	table1.addCell("");	
}

table1.addCell(TxtIncomeTotal);
table1.addCell("");
table1.addCell(TotalIncome+"");

table1.addCell(TxtExpense);
table1.addCell("");
table1.addCell("");

for(Expense exp:expense) {
	TotalExpense=TotalExpense+exp.getAmount();
	
	table1.addCell(exp.getCategory());
	table1.addCell(exp.getAmount()+"");
	table1.addCell("");	
}

table1.addCell(TxtExpenseTotal);
table1.addCell("");
table1.addCell(TotalExpense+"");

float value=TotalIncome-TotalExpense;
if(value>=0) {
	table1.addCell(TxtProfit);
	table1.addCell("");
	table1.addCell(value+"");

}else
{
	table1.addCell(TxtLoss);
	table1.addCell("");
	table1.addCell(value+"");
}


document.add(table1);



document.close();

%>



</body>
</html>