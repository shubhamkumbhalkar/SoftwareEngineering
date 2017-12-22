<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#resetId").click(function(){
			$(this).closest('form').find("input[type=textarea]").val('');
		});
	});
</script>
<style>
	table, th, td {
    	border: 1px solid black;
	}
</style>
</head>
<body>
<div style="height:800px;overflow: auto;">
<h1 style="margin-left:40%">News and Feed</h1>
	<c:forEach items="${news}" var="news">
		<h4><c:out value="${news.heading}" />&nbsp;&nbsp;<a id="deleteId" href="/HawkAide/delete_news?news_id=${news.newsId}">delete news</a></h4>
		<p><c:out value="${news.content}" /></p>
	</c:forEach>
	<form:form method="POST" id="myForm" action="/HawkAide/news_add" modelAttribute="home">
		<table style="margin-left:20%">
			<tr>
				<th>News Id</th>
				<th>News Heading</th>
				<th>News Content</th>
			</tr>
				<tr>
					<td><form:textarea cssStyle="height:200px;" maxlength="20" path="newsId" ></form:textarea></td>
					<td><form:textarea cssStyle="height:200px;" maxlength="100" path="heading" ></form:textarea></td>
					<td><form:textarea cssStyle="height:200px;width:300px;" maxlength="1000" path="content" ></form:textarea></td>
				</tr>
		</table>
		<br/>
		<input style="margin-left:40%;" id="submitId" type="submit"  value="ADD News">
		<button type="reset" id="resetId" value="RESET">RESET</button>
		</form:form>
</div>
</body>
</html>