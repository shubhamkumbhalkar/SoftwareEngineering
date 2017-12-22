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
		<h1 style="margin-left: 40%">Dining near campus</h1>
		<img
			src="file:///C:/Mohan/IITC/Fall%202017/CS487/Project/Construction/workspaces/workspace1/HawkAide/src/main/webapp/WEB-INF/jsp/iit_food.jpg"
			height="400px" width="100%" /> <br />
		<br />
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
			&nbsp;&nbsp;<input style="width:100px;height:30px;color:green;" type="submit" value="  DINE HERE  ">
		</div>
		<div style="margin-left:10%">
			<h4>This restaurant opens from 10:00 AM to 10:00 PM (Now Open)</h4>
			<h4>14 seats available currently</h4>
			<h4>Please visit the below url for more details:</h4>
			<h4>www.jimmyjohns.com</h4>
			<h4>Contact Info: 773.536.2323</h4>
			<h4>3506 South State Street, Chicago, IL 60616 (on campus). Subway sandwiches - freaky fast delivery.</h4>
		</div>
		
	</div>
</body>
</html>