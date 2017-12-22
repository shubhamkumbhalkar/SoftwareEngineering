<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
table, th, td {
	border: 1px solid black;
}
</style>
</head>
<body>
<div style="height:800px;">
<h2 style="margin-left:40%">Discussion Details</h2>
<table style="margin-left: 5%; width: 1100px;">
			<tr>
				<th>Forum</th>
				<th>Description</th>
				<th>Author</th>
				<th>Total Participants</th>
				<th>Unread Posts</th>
				<th>Replies to me</th>
				<th>Total Posts</th>
				<th>Action</th>
			</tr>
			<tr>
				<td>Class Project</td>
				<td><a href="">Discussion about Software Engineeering
						Project.</a></td>
				<td>Mohan Krishna</td>
				<td align="center">28</td>
				<td align="center">09</td>
				<td align="center">12</td>
				<td align="center">64</td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Delete  "></input></td>
			</tr>
			<tr>
				<td>Mid/Final Exams</td>
				<td><a href="">Discussion about Software Engineeering
						Exams.</a></td>
				<td>Tanmay Pradhan</td>
				<td align="center">19</td>
				<td align="center">12</td>
				<td align="center">18</td>
				<td align="center">35</td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Delete  "></input></td>
			</tr>
			<tr>
				<td>Research Report</td>
				<td><a href="">Discussion about Software Engineeering
						Research Report.</a></td>
				<td>Shubham Nandkishor Kumbalkar</td>
				<td align="center">18</td>
				<td align="center">19</td>
				<td align="center">02</td>
				<td align="center">44</td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Delete  "></input></td>
			</tr>
			<tr>
				<td>Class Homework</td>
				<td><a href="">Discussion about Software Engineeering
						Homeworks.</a></td>
				<td>Xinyi Xu</td>
				<td align="center">18</td>
				<td align="center">03</td>
				<td align="center">11</td>
				<td align="center">28</td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Delete  "></input></td>
			</tr>
			<tr>
				<td>Class Questions</td>
				<td><a href="">Discussion about Software Engineeering
						Questions.</a></td>
				<td>Prof. Dennis Hood</td>
				<td align="center">18</td>
				<td align="center">03</td>
				<td align="center">11</td>
				<td align="center">28</td>
				<td><input type="button"
					style="width: 100px; height: 30px; font-weight: bold"
					value="  Delete  "></input></td>
			</tr>
		</table>
		<br />
		<table style="margin-left: 5%; width: 1100px;">
			<tr>
				<td>
					<h5>Prof. Dennis Hood</h5>
					<h5>Class Questions</h5>
					<p>Please ask any questions related to the course work, Exams
						and Project here</p>
					<p>
						<input type="submit" value="  REPLY  ">&nbsp;&nbsp;&nbsp;
						<input type="submit" value="  QUOTE  ">&nbsp;&nbsp;&nbsp;
						<input type="submit" value="  DELETE  ">
					</p>
				</td>
			</tr>
			<tr>
				<td>
					<h5>Xinyi Xu</h5>
					<h5>Class Questions</h5>
					<p>Hi Professor, Are we allowed to carry notes or cheatsheets
						with us during the exam? Can we have some examples (practicing
						questions) for the midterm exam?</p>
					<p>
						<input type="submit" value="  REPLY  ">&nbsp;&nbsp;&nbsp;
						<input type="submit" value="  QUOTE  ">&nbsp;&nbsp;&nbsp;
						<input type="submit" value="  DELETE  ">
					</p>
				</td>
			</tr>
		</table>
</div>
</body>
</html>