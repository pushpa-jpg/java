
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
       <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
   <style>
   table{
      font-family:helvetica;
   border-collapse:collapse;
   width:600px;
   border:1px ;
   cellpadding:30px";
   
   }
   </style>
    </head>
    <br>
    <button onclick="document.location='navadmin.jsp'"> Back </button>
  <br><br>
    <body>
        <div class="container">
            <div class="form-group col-12 p-0">
             <%
                Connection con;
                PreparedStatement pst;
                ResultSet rs;
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/fee_management","root","admin@123");
                String name = request.getParameter("name");
                 out.print("<h3>Student Details</h3>");
              
                pst = con.prepareStatement("select * from student where name=?");
                pst.setString(1,name);
                rs = pst.executeQuery();
                out.print("<TABLE BORDER=1 class=center id=customers >");
                out.print("<TR>");
               
                out.print("<th> ID</th>");
                out.print("<th>Name</th>");
                out.print("<th>Gender</th>");
                out.print("<th>Branch</th>");
                out.print("<th>Address</th>");
                out.print("<th>Emailr</th>");
                out.print("<th>Phone</th>");
                
          				
          					
                out.print("</TR>");
                 while(rs.next())
                 {   
                     
                     out.print("<TR>");
                     out.print("<TD>" + rs.getString("id") + "</TD>");
                     out.print("<TD>" + rs.getString("name") + "</TD>");
                     out.print("<TD>" + rs.getString("gender") + "</TD>");
                     out.print("<TD>" + rs.getString("branch") + "</TD>");
                     out.print("<TD>" + rs.getString("address") + "</TD>");
                     out.print("<TD>" + rs.getString("email") + "</TD>");
                     out.print("<TD>" + rs.getString("phone") + "</TD>");
                   
                     
                     out.print("</TR>");
                      out.print("</Table>");
                 }
                
              %> 
                                
  <body>
  
        <div class="container">
             <div class="form-group col-6 p-0">
                 <form id="form" method="post" action="searchStudent.jsp" class="form-horizontal">
                       <div class="form-group col-md-6"> 
                           <label>Name</label>
  			    <input type="text" name="name" class="form-control" id="name" placeholder="Name">
                        </div>
                      <div class="form-group col-md-6" align="center"> 
 
                        <Button class="btn btn-success" style="width: 80px;">Submit</Button>
              
                        </div>
                     
                 </form>
                 
             </div>
         </div>   
    </body>
    
</html>