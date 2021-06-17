<html>
<head>
<title>Admin Home</title>
<link rel="stylesheet" href="resources/bootstrap.min.css"/>
<link rel="stylesheet" href="style.css"/>
<style>
.center {
  display: block;
  margin-left: auto;
  margin-right: auto;
  width: 1000;
}
</style>
</head>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="feestructure.jsp">FeeStructure</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="navadmin.jsp">Home</a></li>
        <li><a href="${pageContext.request.contextPath}/operation?page=addstudent">Add Student</a></li>
        <li><a href="${pageContext.request.contextPath}/operation?page=listusers">View Students</a></li>
        <li><a href="fee.jsp"> Payment Status</a></li>
        <li><a href="searchStudent.jsp">Search Student</a></li>
        
        <li><a href="index.jsp">Logout</a></li>
        </ul>

    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>

<img src="images/5.png" width="1200"  class="center">
</html>