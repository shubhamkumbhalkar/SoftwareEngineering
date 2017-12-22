<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<h1>Login as a Student or Admin</h1>
<h4 style="color:red">${errormsg}</h4>
<form:form method="POST" action="/HawkAide/loadHome" modelAttribute="home">
			<div style="margin-left:30%;height:600px;">
				<table style="align:center;height:300px;width:400px;">
					<tr>
						<td><b>User Name :</b></td>
						<td><form:input path="username" ></form:input></td>
					</tr>
					<tr>
						<td><b>Password :</b></td>
						<td><form:password path="password" /></td>
					</tr>
					<tr>
						<td colspan="2"><input type="submit" value="Login"></td>
					</tr>
				</table>
				</div>
			</form:form>
</body>
</html>