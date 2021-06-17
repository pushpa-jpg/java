<%@include file="include/header2.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Payment Checkout Form</title>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.2/css/all.css">
	
<style>
@import url('https://fonts.googleapis.com/css?family=Baloo+Bhaijaan|Ubuntu');

*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Ubuntu', sans-serif;
}

body{
  background: #2196F3;
  margin: 0 10px;
}

.payment{
  background: #f8f8f8;
  max-width: 360px;
  margin: 80px auto;
  height: auto;
  padding: 35px;
  padding-top: 70px;
  border-radius: 5px;
  position: relative;
}

.payment h2{
  text-align: center;
  letter-spacing: 2px;
  margin-bottom: 40px;
  color: #0d3c61;
}

.form .label{
  display: block;
  color: #555555;
  margin-bottom: 6px;
}

.input{
  padding: 13px 0px 13px 25px;
  width: 100%;
  text-align: center;
  border: 2px solid #dddddd;
  border-radius: 5px;
  letter-spacing: 1px;
  word-spacing: 3px;
  outline: none;
  font-size: 16px;
  color: #555555;
}

.card-grp{
  display: flex;
  justify-content: space-between;
}

.card-item{
  width: 48%;
}

.space{
  margin-bottom: 20px;
}

.icon-relative{
  position: relative;
}

.icon-relative .fas,
.icon-relative .far{
  position: absolute;
  bottom: 12px;
  left: 15px;
  font-size: 20px;
  color: #555555;
}

.btn{
  margin-top: 40px;
  background: #2196F3;
  padding: 12px;
  text-align: center;
  color: #f8f8f8;
  border-radius: 5px;
  cursor: pointer;
}


.payment-logo{
  position: absolute;
  top: -50px;
  left: 50%;
  transform: translateX(-50%);
  width: 100px;
  height: 100px;
  background: #f8f8f8;
  border-radius: 50%;
  box-shadow: 0 0 5px rgba(0,0,0,0.2);
  text-align: center;
  line-height: 85px;
}

.payment-logo:before{
  content: "";
  position: absolute;
  top: 5px;
  left: 5px;
  width: 90px;
  height: 90px;
  background: #2196F3;
  border-radius: 50%;
}

.payment-logo p{
  position: relative;
  color: #f8f8f8;
  font-family: 'Baloo Bhaijaan', cursive;
  font-size: 58px;
}


@media screen and (max-width: 420px){
  .card-grp{
    flex-direction: column;
  }
  .card-item{
    width: 100%;
    margin-bottom: 20px;
  }
  .btn{
    margin-top: 20px;
  }
}





</style>
</head>
<body>
	
 <form action="${pageContext.request.contextPath}/PaymentController" method="POST">

<div class="wrapper">
  <div class="payment">
    <div class="payment-logo">
      <p>p</p>
    </div>
    
   
    <h2>Enter student details here:</h2>
    <div class="form">
      <div class="card space icon-relative">
        <label class="label">Student Name:</label>
        <input type="text" class="input" placeholder="name of the student" name="name" pattern="[A-Za-z]{3,}" maxlength="25" minlength="3" required>
      </div>
      <div class="card space icon-relative">
        <label class="label">Batch:</label>
        <input type="text" class="input" placeholder="Eg:2017, 2018, 2019...." name="batch" required>
      </div>
      <div class="card space icon-relative">
        <label class="label">Year:</label>
        <input type="text" class="input" placeholder="year" name="year" required>
      </div>
      <div class="card space icon-relative">
      <label class="label">Branch:</label>
        <input type="text" class="input" placeholder="Eg:CSE, ISE, ECE...." name="branch" required>
      </div>
      
      <div class="card space icon-relative">
        <label class="label">Category:</label>
        <select name="category" id="" class="input">
	  		<option value="CET">CET</option>
	  		<option value="SNQ">SNQ</option>
	  		<option value="COMEDK">COMEDK</option>
		</select>
      </div>
      
      
      <div class="card space icon-relative">
        <label class="label">Total Fee:</label>
        <input type="text" class="input" placeholder="total fee to be paid" name="total_fee" required>
      </div>
      <hr/><br>
      <h2>Credit Card</h2>
      <div class="card space icon-relative">
        <label class="label">Card holder:</label>
        <input type="text" class="input"  placeholder="name of the card holder" name="cardholder" required>
        <i class="fas fa-user"></i>
      </div>
      <div class="card space icon-relative">
        <label class="label">Card number:</label>
        <input type="text" class="input"  data-mask="0000 0000 0000 0000"  placeholder="Card Number" name="cardnumber" required>
        <i class="far fa-credit-card"></i>
      </div>
      <div class="card-grp space">
        <div class="card-item icon-relative">
          <label class="label">Expiry date:</label>
          <input type="text" class="input"    data-mask="00 / 00"  placeholder="MM / YY" name="expiry_date" required>
          <i class="far fa-calendar-alt"></i>
        </div>
        <div class="card-item icon-relative">
          <label class="label">CVC:</label>
          <input type="text" class="input"  data-mask="000" placeholder="000" name="cvc" required>
          <i class="fas fa-lock"></i>
        </div>
      </div>
      
      
      <div class="card space icon-relative">
        <label class="label">Amount:</label>
        <input type="text" class="input" placeholder="Amount" name="amount" required>
        
      </div>
        
      
        <input type="hidden" name="form" value="addUserOperation">
		 <input class="btn btn--radius-2 btn--blue" type="submit" value="Pay">
    
      
    </div>
  </div>
</div>
 </form>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.min.js"></script>

</body>
</html>
