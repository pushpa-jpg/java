<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<%@include file="include/header1.jsp"%>
<HTML>
       <HEAD>
       <TITLE>fee Status </TITLE>
       <STYLE>
table.center {
  margin-left: auto; 
  margin-right: auto;
}
table{
      font-family:helvetica;
   border-collapse:collapse;
   width:600px;
   border:1px ;
   cellpadding:30px";
   
  }
  
   thead tr{
     background-color: #ee82ee;
	 color:#ffffff;
	 text-align:left;
	 font-weight:bold;
	 }
	 
	 tbody tr:nth-of-type(even){
	background-color:#f3f3f3;
	}
	 th, td{
	padding:20px ;
	 }
    tbody tr:last-of-type {
	
	}

  
 div{
   background-attachment:fixed;
   background-size:100% 100%;
   background-repeat:no-repeat;
 }
</STYLE> 

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js" type="text/javascript"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.2/jspdf.min.js"></script>
</HEAD>
       <BODY>
      <br/><br/><br/>
       <%
           Connection connection = DriverManager.getConnection(
            "jdbc:mysql://localhost:3306/fee_management","root","admin@123");
           Statement statement = connection.createStatement() ;
          ResultSet resultset = statement.executeQuery("select id,name,batch,year,branch,category,total_fee,cardholder,amount  from payment") ;
       %>
      <TABLE BORDER="1" class="center" id="customers">
      <tr class="header" id="feehead">
                    
                    <td><strong>ID</strong></td>
					<td><strong>Name</strong></td>
					<td><strong>Batch</strong></td>
					<td><strong>Year</strong></td>
					<td><strong>Branch</strong></td>
					<td><strong>Category</strong></td>
					<td><strong>Total fee</strong></td>
					<td><strong>Card  holder</strong></td>
					<td><strong>Paid amount</strong></td>
	                <td><strong>receipt</strong></td>
					
      </tr>
      <tbody>
      <% while(resultset.next()){ %>
      <TR>
       <TD> <%= resultset.getString(1) %></td>
       <TD> <%= resultset.getString(2) %></TD>
       <TD> <%= resultset.getString(3) %></TD>
       <TD> <%= resultset.getString(4) %></TD>
       <TD> <%= resultset.getString(5) %></TD>
       <TD> <%= resultset.getString(6) %></TD>
       <TD> <%= resultset.getString(7) %></TD>
       <TD> <%= resultset.getString(8) %></TD>
       <TD> <%= resultset.getString(9) %></TD>
       <TD> <button onclick="javascript:demoFromHTML(this);">PDF</button></TD>
        
      </TR>
      <% } %>
      </tbody>
     </TABLE>
    
     <script>
     function demoFromHTML(e) {
    	    var pdf = new jsPDF('p', 'pt', 'a4');
    	    
    	    var tabData = "<pre>"+"<h1>FEE RECEIPT</h1>"+
		    	    	 	"<br/>"+"Id"+":"+$(e).closest('tr').children('td:eq(0)').text()+
				    	    "<br/>"+ "Name"+ ":"+$(e).closest('tr').children('td:eq(1)').text()+
				    	    "<br/>"+ "Batch"+ ":"+$(e).closest('tr').children('td:eq(2)').text()+
				    	    "<br/>"+ "Year"+ ":"+$(e).closest('tr').children('td:eq(3)').text()+
				    	    "<br/>"+ "Branch"+ ":"+$(e).closest('tr').children('td:eq(4)').text()+
				    	    "<br/>"+ "Category"+ ":"+$(e).closest('tr').children('td:eq(5)').text()+
				    	    "<br/>"+ "Total fee"+ ":"+$(e).closest('tr').children('td:eq(6)').text()+
				    	    "<br/>"+ "Paid amount"+ ":"+$(e).closest('tr').children('td:eq(8)').text();+"</pre>"
    	  
    	    
    	    margins = {
    	        top: 80,
    	        bottom: 60,
    	        left: 40,
    	        width: 900
    	    };
    	    // all coords and widths are in jsPDF instance's declared units
    	    // 'inches' in this case
    	    pdf.fromHTML(
    	    source = tabData,// HTML string or DOM elem ref.
    	    margins.left, // x coord
    	    margins.top, { // y coord
    	        'width': margins.width // max width of content on PDF
    	    },

    	    function (dispose) {
    	        // dispose: object with X, Y of the last line add to the PDF 
    	        //          this allow the insertion of new lines after html
    	        pdf.save('Test.pdf');
    	    }, margins);
    	}
     
     </script>
     </BODY>
</HTML>