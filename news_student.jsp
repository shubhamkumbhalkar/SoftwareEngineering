<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<div style="height:800px;">
<h1 style="margin-left:40%">News and Feed</h1>
	<c:forEach items="${news}" var="news">
		<h4><c:out value="${news.heading}" /></h4>
		<p><c:out value="${news.content}" /></p>
	</c:forEach>
</div>
</body>
</html>