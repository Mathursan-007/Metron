package com.util;
import java.io.File;






import java.io.FileOutputStream;
import java.util.Date;

import com.itextpdf.text.*;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.parser.Line;


public class pdf {
    public static void main(String[] args) {
    	String FILE_NAME = "D:\\java_pdf\\chillyfacts.pdf";
        Document document = new Document();
        try {
            
        	PdfWriter.getInstance(document, new FileOutputStream(new File(FILE_NAME)));
            document.open();
            document.add(new Paragraph(new Date().toString()));
            Paragraph p = new Paragraph("Text1");
           
            
           
            p.setAlignment(Element.ALIGN_CENTER);
            
            document.add(p);
            
            Paragraph p2 = new Paragraph("Text2");
            
            p2.add(p); //no alignment
           
            document.add(p2);
            
            Font f = new Font();
            f.setStyle(Font.BOLD);
            f.setSize(8);
      
            String q="Quantity";
	         String n="Name";
	         
	        Paragraph name=new Paragraph(n); 
	        Paragraph qty=new Paragraph(q); 
	        

	    //   PdfPTable table = new Table(1);
	     
	        
	        //name.add(qty.toString().re);
	       // name.add(p2); 
	        
	        document.add(name);
	        document.add(qty);
            
            document.add(new Paragraph("This is my paragraph 3", f));
           // document.add(Image.getInstance("D:\\java_pdf\\chillyfacts.png"));
            document.close();
            System.out.println("Done");
        } catch (Exception e) {
            e.printStackTrace();
        } 
    }
}