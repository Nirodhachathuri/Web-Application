<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>ABC Portal</title>
	<link rel = "icon" href ="abc-logo-X2.jpg" type = "image/x-icon">
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css">
	<link rel="stylesheet" type="text/css" href="CSS/register.css">
	</head>
	<body>
	<br><br>
	<div class="container">
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<header class="card-header">
	<a href="login.jsp" class="float-right btn btn-outline-primary mt-1">Log in</a>
	<h4 class="card-title mt-2" class="text-center">Sign up</h4>
</header>
<article class="card-body">
				<table>
				<s:form action="registerAction" method="post">
				    <s:property value="msg"/>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:textfield  label="First Name" name="firstname"/></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:textfield label="Last Name" name="lastname"/></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:textfield  label="Company Name" name="companyname"/></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:textfield label="City" name="city"/></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:textfield  label="Country" name="country"/></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:textfield  label="E-mail" name="email"/></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;<s:password label="Password" name="password"/></td></tr>
					<tr><td colspan="2">&nbsp;&nbsp;&nbsp;<s:submit cssClass="btnRegister" value="Register"/></td></tr> 
				 <small class="text-muted">By clicking the 'Sign Up' button, you confirm that you accept our <br> Terms of use and Privacy Policy.</small>                                          
				
				</s:form>
				</table>
			</article> <!-- card-body end .// -->
<div class="border-top card-body text-center">Have an account? <a href="login.jsp">Log In</a></div>
</div> <!-- card.// -->
</div> <!-- col.//-->

</div> <!-- row.//-->


</div> 
<!--container end.//-->

<br><br>
	</body>
</html>