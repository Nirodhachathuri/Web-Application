<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>User List</title>
		<link rel = "icon" href ="abc-logo-X2.jpg" type = "image/x-icon">
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
		<script	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
		<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	</head>
	<body>
		<jsp:include page="header.jsp"></jsp:include>
		<table class="table table-sm">
			<s:iterator value="users" var="users">
						<tr>
							<td scope="row"><s:property value="#users.firstname"/> <s:property value="#users.lastname"/></td>
							<td scope="row"><s:property value="#users.companyname"/></td>
						</tr>
				</s:iterator>
		</table>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>