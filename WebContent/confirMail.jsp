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
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<link rel="stylesheet" type="text/css" href="CSS/login-error.css">
</head>
<body style="background: #DE6262;"><br><br><br><br><br>
	<div class="container">
<div class="row justify-content-center">
<div class="col-md-6">
<div class="card">
<header class="card-header">
	<a href="login.jsp" class="float-right btn btn-outline-primary mt-1">Log in</a>
	<h4 class="card-title mt-2" class="text-center">First, let's find your account</h4>
</header>
			<article class="card-body">
				<table>
				<s:form action="registerAction" method="post">
				    <s:property value="msg"/>
						<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:textfield  label="E-mail" name="email"/></td></tr>
					<tr><td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<s:submit cssClass="btnRegister" value="Find Account"/></td></tr> 
				 <small class="text-muted">Please enter your email or phone</small>                                          
				
				</s:form>
				</table>
		   	</article> <!-- card-body end .// -->
</div> <!-- card.// -->
</div> <!-- col.//-->
</div> <!-- row.//-->
</div> 
<!--container end.//-->
</body>
</html>