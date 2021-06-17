

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Add Student</title>

    <!-- Icons font CSS-->
    <link href="assets1/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="assets1/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="assets1/vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="assets1/vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="assets1/css/main.css" rel="stylesheet" media="all">
</head>

<body>
<br>
 <button onclick="document.location='navadmin.jsp'"> Back </button>
  <br>

    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
               
   
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
     
      				<h2 class="title">Adding Student</h2>
      				
                    <form action="${pageContext.request.contextPath}/operation" method="POST">
                        <div class="row row-space">
                              <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name</label>
                                    <input class="input--style-4" type="text" name="name" pattern="[A-Za-z]{3,}" maxlength="25" minlength="3" required>
                                </div>
                            </div> 
                            <br/>
                            
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender" value="male">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender" value="female">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="input-group">
                            <label class="label">Branch</label>
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="branch">
                                    <option disabled="disabled" selected="selected">Choose option</option>
                                    <option>CSE</option>
                                    <option>ISE</option>
                                    <option>ECE</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        </div>
                        <div class="row row-space">
                        	<div class="col-2">
                                <div class="input-group">
                                    <label class="label">Address</label>
                                    <input class="input--style-4" type="text" name="address" pattern="[A-Za-z]{3,}" maxlength="25" minlength="3" required>
                                </div>
                            </div>
                        
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="email" name="email" required>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Phone Number</label>
                                    <input class="input--style-4" type="text" name="phone" pattern="\d{10}" required>
                                </div>
                            </div>
                        </div>
                        
                        <div class="p-t-15">
                            <input type="hidden" name="form" value="addUserOperation">
		                    <input class="btn btn--radius-2 btn--blue" type="submit" value="Add Student">
                            <!--  <button class="btn btn--radius-2 btn--blue" type="submit" value="Add student">Submit</button> -->
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="assets1/vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="assets1/vendor/select2/select2.min.js"></script>
    <script src="assets1/vendor/datepicker/moment.min.js"></script>
    <script src="assets1/vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="assets1/js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->


</html>
<!-- end document-->
