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
<h1 style="margin-left:40%">Dining Details</h1>
<div>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<label style="color: blue; font-size: 20px;magrin-left: 30%;"><b>Find the
					restuarants near college: </b></label> <select
				style="width: 200px; height: 30px;">
				<option  value="--default--">--default--</option>
				<option value="json">Jason's Deli</option>
				<option selected="selected" value="jimmyhohns">Jimmy Johns</option>
				<option value="Starbucks">Starbucks</option>
				<option value="Giordano's Pizzeria">Giordano's Pizzeria</option>
			</select>
			&nbsp;&nbsp;<input style="width:150px;height:30px;color:green;" type="submit" value="  Delete Restaurant  ">
		</div>
		<div style="margin-left:10%">
			<h4>This restaurant opens from 10:00 AM to 10:00 PM (Now Open)</h4>
			<h4>14 seats available currently</h4>
			<h4>Please visit the below url for more details:</h4>
			<h4>www.jimmyjohns.com</h4>
			<h4>Contact Info: 773.536.2323</h4>
			<h4>3506 South State Street, Chicago, IL 60616 (on campus). Subway sandwiches - freaky fast delivery.</h4>
		</div>
<table style="margin-left: 20%; width: 600px;">
			<tr>
			<tr>
				<td><h3>Enter the new Restaurant</h3></td>
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