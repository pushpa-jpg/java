<%@include file="include/header2.jsp"%>

<html>
<head>
<style>
  table{
    width:600px;
	border:1px  #000000;
	border-collapse:collapse;
	height:15;
	spacing:15px;

	}
    thead th{
	  padding:12px;
	  text-align:left;
	  font-family:sans-serif;
	  background-color:orange;
	  color:#ffffff;
	 
	}

    tbody tr,td{
	 padding:15px;
	 text-align:left;

	 }
	 tbody tr:nth-of-type(odd){
	  background-color:#FFD580;
	  
      }
     tbody tr:last-of-type{
	  border-bottom:2px solid orange;
	  }
	  div(
	   background-attachment:fixed;
       background-size:cover;
}	   
</style>
</head>
<body>
<table align="center" padding="15px">
    <thead>
	   <tr>
	      <th>Category
		  <th>Batch (2017)
		  <th>Batch (2018)
		  <th>Batch (2019)
		  <th>Batch (2020)
		</tr>
    </thead>
    <tbody>	
	    <tr>
		  <td>CET
		  <td>65000
		  <td>70000
		  <td>75000
		  <td>80000
		</tr>  
         <tr>
		  <td>SNQ
		  <td>27000
		  <td>21000
		  <td>21000
		  <td>21000
		 
		</tr> 
		  <tr>
		  <td>COMEDK
		  <td>175000
		  <td>155000
		  <td>175000
		  <td>175000
		  
		</tr> 
		
		
	</tbody>
 </table>
 
</body>
</html>