<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>header</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<div class="container-fluid">
			<div
				class="navbar-header navbar-collapse collapse w-100 order-1 order-md-0 dual-collapse2">
				<a class="navbar-brand" href="#"><img
					src="image/abc-logo-X2.jpg" height="50px" width="50px" /></a>
				<h2 style="font-family: verdana; color: white; text-align: left;">
					<b>JOBS</b>
				</h2>
			</div>
			<div class="navbar-collapse collapse w-100 order-2 dual-collapse2">

				<form class="navbar-form pull-right" action="searchAction" method="post">
					<div class="form-group">
						<s:textfield cssClass="form-control" name="search"/>
						<s:submit cssClass="btnSubmit" value="Search"/>
					</div>
				</form>
			</div>
			<div class="navbar-collapse collapse w-100 order-3 dual-collapse2"
				style="float: right">

				<s:a href="#" cssClass="btnSubmit" style="width:80px;">
					<button>Profile</button>
				</s:a>
				<s:a href="logout" cssClass="btnSubmit" style="width:80px;">
					<button>Log Out</button>
				</s:a>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			</div>
		</div>
	</nav>
</body>
</html>