<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Portal</title>
<link rel="icon" href="abc-logo-X2.jpg" type="image/x-icon">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="CSS/login.css">
</head>
<body>
	<section class="login-block">
		<div class="container">
			<div class="row">
				<div class="col-md-4 login-sec">
					<h2 class="text-center">Login Now</h2>
					<table>
						<s:form action="adminLoginAction" method="post">
							<tr>
								<td>&nbsp;&nbsp;&nbsp;<s:textfield
										cssClass="form-control col-sm-12" label="E-Mail"
										name="email"></s:textfield></td>
							</tr>
							<tr>
								<td>&nbsp;&nbsp;&nbsp;<s:password
										cssClass="form-control col-sm-12" label="Password"
										name="password"></s:password></td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;&nbsp;&nbsp; <s:a	href="confirMail.jsp" cssClass="btnForgetPwd">Forget Password?</s:a></td>
							</tr>
							<tr>
								<td colspan="2">&nbsp;&nbsp;&nbsp;<s:submit	cssClass="btnSubmit" value="Login"></s:submit></td>
							</tr>
						</s:form>
					</table>
				</div>
				<div class="col-md-8 banner-sec">
					<img class="d-block img-fluid"
						src="https://static.pexels.com/photos/33972/pexels-photo.jpg">
				</div>
			</div>
		</div>
	</section>
</body>