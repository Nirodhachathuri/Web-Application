<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ABC Portal</title>
<link rel="icon" href="abc-logo-X2.jpg" type="image/x-icon">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<div class="jumbotron">
		<div align="center">
			<a href="register.jsp"><button>Add New User</button></a>
		</div>
		<div class="regform">
			<div class="main">

				<table class="table table-sm">
					<thead>
						<tr>
							<th scope="col">User ID</th>
							<th scope="col">User First Name</th>
							<th scope="col">User Last Name</th>
							<th scope="col">User Company Name</th>
							<th scope="col">User City</th>
							<th scope="col">User Country</th>
							<th scope="col">User Email</th>
							<th scope="col">User Password</th>
							<th scope="col" colspan="2">Actions</th>

						</tr>
					</thead>
					<s:iterator value="users" var="users">
						<tr>
							<td scope="row"><s:property value="#users.id" /></td>
							<td scope="row"><s:property value="#users.firstname" /></td>
							<td scope="row"><s:property value="#users.lastname" /></td>
							<td scope="row"><s:property value="#users.companyname" /></td>
							<td scope="row"><s:property value="#users.city" /></td>
							<td scope="row"><s:property value="#users.country" /></td>
							<td scope="row"><s:property value="#users.email" /></td>
							<td scope="row"><s:property value="#users.password" /></td>
							<td scope="row"><a
								href="updateDataAction?id=<s:property value="#users.id" />">
									<button>Update</button>
							</a></td>
							<td scope="row"><a
								href="deleteAction?id=<s:property value="#users.id" />">
									<button>Delete</button>
							</a></td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</div>
	</div>
</body>
<jsp:include page="footer.jsp"></jsp:include>
</html>