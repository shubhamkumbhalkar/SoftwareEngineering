<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div style="height:800px;">
<h1 style="margin-left:40%">Academic Details</h1>
	<table style="margin-left:30%; width: 400px;">
			<tr>
				<td><h3>Select the course:</h3></td>
				<td><select
				style="width: 200px; height: 30px;">
				<option>CS 487 Software Engineering</option>
				<option>CS 584 Machine Learning</option>
				<option>CS 553 Cloud Computing</option>
				<option>CS 422 Data Mining</option>
			</select></td>
			</tr>
			<tr>
				<td><h3>Select the type:</h3></td>
				<td><select
				style="width: 200px; height: 30px;">
				<option>Exam Schedule</option>
				<option>Class Schedule</option>
				<option>Grade Information</option>
				<option>Project/Assignment details</option>
			</select></td>
			</tr>
			<tr>
				<td><h3>Enter the event start date</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input> </td>
			</tr>
			<tr>
				<td><h3>Enter the event end date</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input> </td>
			</tr>
			<tr>
				<td><h3>Enter the event description</h3></td>
				<td><input style="width: 200px; height: 30px;" type="text"></input> </td>
			</tr>
			<tr>
				<td><h3>Select the type of operation:</h3></td>
				<td><select
				style="width: 200px; height: 30px;">
				<option><h4>Create</h4></option>
				<option>Update</option>
				<option>View</option>
				<option>Delete</option>
			</select></td>
			</tr>
			<tr>
				<td colspan="1"><input type="submit" style="width: 200px; height: 30px;"></input></td>
			</tr>
	</table>
</div>
</body>
</html>