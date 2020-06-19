<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>ABC Portal</title>
	<link rel = "icon" href ="abc-logo-X2.jpg" type = "image/x-icon">
	<style type="text/css">
 *{
 margin:0;
 padding:0; 
 }
 body{
 background-image:url(image1.jpg);
 	background-position:center;
 	font-family: sans-serif;
 	margin-top:40px;
 	font-size:18px;
 }
.regform{
	width:400px;
	background-color:rgb(0,0,0,0.6);
	margin:auto;
	color:#FFFFFF;
	padding:10px0px10px0px;
	text-align:center;
	border-radius:2.5px;
}
.main{
width:400px;
	background-color:lightgreen;
	margin:auto;
}
form
{
padding:10px;
margin-left:50px;
}
	</style> 
</head>
	<body>
		<div class="regform">
			<div class="main">
				<h1>Update Here</h1>
				<s:form action="updateAction" method="post" >
					<s:textfield label="ID" name="id" readonly="true"/>
					<s:textfield label="First Name" name="firstname" />
					<s:textfield label="Last Name" name="lastname" />
					<s:textfield label="Company Name" name="companyname" />
					<s:textfield label="City" name="city" />
					<s:textfield label="Country" name="country" />
					<s:textfield label="E-mail" name="email" />
					<s:submit  value="update"/>
				</s:form>
			</div>
		</div>
	</body>
</html>