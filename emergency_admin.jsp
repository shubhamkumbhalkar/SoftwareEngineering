<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div style="height: 800px;">
		<h1 style="margin-left: 40%">Emergency Details</h1>
		<table style="margin-left: 20%; width: 600px;">
			<tr>
				<td><h3>Enter the Alert Info</h3></td>
				<td><textarea style="width: 200px; height: 100px;" type="text"></textarea>
				</td>
				<td colspan="1"><input type="button"
					style="width: 100px; height: 30px; color: red; font-weight: bold"
					value="  Email All  "></input></td>
			</tr>
		</table>
		<table style="margin-left: 20%; width: 600px;">
			<tr>
			<tr>
				<td><h3>Enter the Emergency type</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input>
				</td>
			</tr>
			<tr>
				<td><h3>Enter the emergency information</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input>
				</td>
			</tr>
			<tr>
				<td><h3>Alert All</h3></td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Alert  "></input></td>
			</tr>
			
		</table>
		<table style="margin-left: 20%; width: 600px;">
			<tr>
			<tr>
				<td><h3>Enter the new type</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input>
				</td>
			</tr>
			<tr>
				<td><h3>Enter the Contact details</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input>
				</td>
			</tr>
			<tr>
				<td><h3>Update </h3></td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Update  "></input></td>
			</tr>
			
		</table>
	</div>
</body>
</html>