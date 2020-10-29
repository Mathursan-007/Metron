<%@page import="com.service.FinanceImpl"%>
<%@page import="com.service.IFinance"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="com.model.Income" %> 
<%@ page import="com.model.Expense" %> 



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard</title>

</head>
<body>



<% 

ArrayList<Income> income=new ArrayList<>();

FinanceImpl financeImpl = new FinanceImpl();

income = financeImpl.generateIncome("2020-01-01", "2020-12-31");


float[] IncomeAmount = new float[5];


int a=0;
for(Income inc:income) {
	IncomeAmount[a]=inc.getAmount();
	a=a+1;
		
}


System.out.println("Income"+IncomeAmount[0]);


ArrayList<Expense> expense=new ArrayList<>();

expense = financeImpl.generateExpense("2020-01-01", "2020-12-31");

float[] ExpenseAmount = new float[9];


int v=0;
for(Expense exp:expense) {
	ExpenseAmount[v]=exp.getAmount();
	v=v+1;
		
}



System.out.println("Expense"+ExpenseAmount[0]);


%>
 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    
   var tem0=<%=IncomeAmount[0] %>;
   var tem1=<%=IncomeAmount[1] %>;
   var tem2=<%=IncomeAmount[2] %>;
   var tem3=<%=IncomeAmount[3] %>;
   var tem4=<%=IncomeAmount[4] %>;
   
   
   

   var Etem0=<%=ExpenseAmount[0] %>;
   var Etem1=<%=ExpenseAmount[1] %>;
   var Etem2=<%=ExpenseAmount[2] %>;
   var Etem3=<%=ExpenseAmount[3] %>;
   var Etem4=<%=ExpenseAmount[4] %>;
   var Etem5=<%=ExpenseAmount[5] %>;
   var Etem6=<%=ExpenseAmount[6] %>;
   var Etem7=<%=ExpenseAmount[7] %>;
   var Etem8=<%=ExpenseAmount[8] %>;
   
   
  
   

    
      google.charts.load("current", {packages:["corechart"]});
      google.charts.setOnLoadCallback(drawChart);
      function drawChart() {
        var Idata = google.visualization.arrayToDataTable([
          ['Task', 'income per month'],
          ['Event Management',tem0],
          ['Extra Service',  tem1],
          ['Restaurant', tem2],
          ['Room', tem3],
          ['Transport', tem4]
         
		 
        ]);
        
        
        var Edata = google.visualization.arrayToDataTable([
            ['Task', 'expense per month'],
            ['Electricity Bill',Etem0],
            ['Gas Bill',  Etem1],
            ['Internet Bill', Etem2],
            ['Miscellaneous', Etem3],
            ['Rental',  Etem4],
  		    ['Salary', Etem5],
  		    ['Stock', Etem6],
  		    ['Water & Sewage', Etem7],
  		    ['Water Bill',Etem8]
  		 
          ]);

      
        
        
        var Ioptions = {
          title: 'TOTAL INCOME FOR THE YEAR 2020',
          is3D: true,
        };
        
     
        
        var Eoptions = {
                title: 'TOTAL EXPENSE FOR THE YEAR 2020',
                is3D: true,
              };

      
        

        var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
        chart.draw(Idata, Ioptions);
        
        
        var chart1 = new google.visualization.PieChart(document.getElementById('piechart1_3d'));
        chart1.draw(Edata, Eoptions);
        
        
        
      }
    </script>





 <div id="piechart_3d" style="width: 700px; height: 400px; transform:translate(-50px,280px);"></div>
 
 <div id="piechart1_3d" style="width: 700px; height: 400px; margin-left:550px; margin-top:-120px;"></div>

 
 



	<script>
		$('.sub-menu ul').hide();
		$(".sub-menu a").click(function() {
			$(this).parent(".sub-menu").children("ul").slideToggle("100");
			$(this).find(".right").toggleClass("fa-caret-up fa-caret-down");
		});
	</script>



</body>
</html>
