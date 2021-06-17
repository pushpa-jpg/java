<%@include file="include/header1.jsp"%>
<%@ page import="java.util.List"%>
<%@ page import="org.gat.entity.Addstudent"%>
<html>
<head>
<title></title>
<style>
table.center {
  margin-left: auto; 
  margin-right: auto;
}
table{
      font-family:helvetica;
   border-collapse:collapse;
   width:50%;
   border:1px ;
   cellpadding:30px";
   
  }
  
   thead tr{
     background-color: #009879;
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
	border-bottom:3px solid #009879;
	}

  
 div{
   background-attachment:fixed;
   background-size:100% 100%;
   background-repeat:no-repeat;
 } 
</style>
</head>
<body>
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
			<strong>Listing users</strong>
			<hr />
			<table border="1" class="center">
				<thead>
					<th> ID</th>
					<th>Name</th>
					<th>Gender</th>
					<th>Branch</th>
					<th>Address</th>
					<th>Email</th>
					<th>Phone</th>
					<th>Operation</th>
				</thead>
				<tbody>
				<%!String deleteURL;%>
				<%
					List<Addstudent> listUsers = (List) request.getAttribute("listUsers");
					String updateURL;
					for (int i = 0; i < listUsers.size(); i++) {
						out.print("<tr>");
						out.print("<td>" + listUsers.get(i).getId() + "</td>");
						out.print("<td>" + listUsers.get(i).getName() + "</td>");
						out.print("<td>" + listUsers.get(i).getGender() + "</td>");
						out.print("<td>" + listUsers.get(i).getBranch() + "</td>");
						out.print("<td>" + listUsers.get(i).getAddress() + "</td>");
						out.print("<td>" + listUsers.get(i).getEmail() + "</td>");
						out.print("<td>" + listUsers.get(i).getPhone() + "</td>");
						
					
						updateURL = request.getContextPath() + "/operation?page=updateUser" + "&id="
								+ listUsers.get(i).getId() + "&name=" + listUsers.get(i).getName() + "&gender=" + listUsers.get(i).getGender() + "&branch=" + listUsers.get(i).getBranch() + "&address=" + listUsers.get(i).getAddress() + "&email="
								+ listUsers.get(i).getEmail() + "&phone=" + listUsers.get(i).getPhone();
						deleteURL = request.getContextPath() + "/operation?page=deleteUser" + "&id="
								+ listUsers.get(i).getId();
						out.print("<td><a href=" + updateURL + ">Update</a>|");
				%>
				<a href="<%=deleteURL%>"
					onclick="if(!confirm('Are you sure to delete the user?')) return false">Delete</a>
				</td>
				</tr>
				<%
					}
				%>
				</tbody>
			</table>
		</div>
	</div>
</div>
</body>
</html>
<br>
<br>
<br>
<%@include file="include/footer1.jsp"%>





