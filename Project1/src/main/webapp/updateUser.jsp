<%@include file="include/header1.jsp" %>
<div class="container mtb">
	<div class="row">
		<div class="col-lg-6">
		<form action="${pageContext.request.contextPath}/operation" method="post">
		name:    <input type="text" name="name" value="${param.name }" required="required"/><br/>
		gender:  <input type="text" name="gender" value="${param.gender }" required="required"/><br/>
		branch:  <input type="text" name="branch" value="${param.branch }" required="required"/><br/>
		address: <input type="text" name="address" value="${param.address }" required="required"/><br/>
		email:   <input type="email" name="email" value="${param.email }" required="required"/><br/>
		phone:   <input type="text" name="phone" value="${param.phone }" required="required"/><br/>
		<input type="hidden" name="id" value="${param.id }"/>
		<input type="hidden" name="form" value="updateUserOperation"/>
		<input type="submit" value="Update User"/>
		</form>
		</div>
	</div>
</div>
<br>
<br>
<%@include file="include/footer1.jsp" %>