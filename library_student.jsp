<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<h1 style="margin-left:40%">Library Details</h1>
<h3 style="margin-left:40%">Available Books</h3>
		<table style="margin-left:10%;width:1000px;">
			<tr>
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Author</th>
				<th>Version</th>
				<th>Location</th>
				<th>Pre Book</th>
			</tr>
			<c:forEach items="${libInfo}" var="libInfo">
				<tr>
					<td><c:out value="${libInfo.bookId}" /></td>
					<td><c:out value="${libInfo.bookName}" /></td>
					<td><c:out value="${libInfo.author}" /></td>
					<td><c:out value="${libInfo.version}" /></td>
					<td><c:out value="${libInfo.location}" /></td>
					<td><a id="removeId"
						href="/HawkAide/pre_book?book_id=${libInfo.bookId}">Pre Book</a></td>
				</tr>
			</c:forEach>
		</table>
		<br/><br/>
		<h3 style="margin-left:40%">My Books</h3>
		<table style="margin-left:10%;width:1000px;">
			<tr>
				<th>Book Id</th>
				<th>Book Name</th>
				<th>Author</th>
				<th>Version</th>
				<th>Location</th>
			</tr>
			<c:forEach items="${mylib}" var="mylib">
				<tr>
					<td><c:out value="${mylib.bookId}" /></td>
					<td><c:out value="${mylib.bookName}" /></td>
					<td><c:out value="${mylib.author}" /></td>
					<td><c:out value="${mylib.version}" /></td>
					<td><c:out value="${mylib.location}" /></td>
					<%-- <td><a id="removeId"
						href="/HawkAide/remove_course?course_id=${libInfo.bookId}">REMOVE</a></td> --%>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>