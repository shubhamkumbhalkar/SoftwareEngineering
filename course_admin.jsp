<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	table, th, td {
    	border: 1px solid black;
	}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#resetId").click(function(){
			$(this).closest('form').find("input[type=textarea], textarea").val("");
		});
		
	});
</script>
</head>
<body id="onload">
<div style="height:800px;">
<h1 style="margin-left:40%">Course Catalog</h1>

<table>
			<tr>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Professor Info</th>
				<th>Class Time</th>
				<th>Exam Time</th>
				<th>Grade Info</th>
				<th>Assignment Info</th>
				<th>TA Info</th>
				<th>Add Course</th>
			</tr>
			<c:forEach items="${remCourses}" var="remCourses">
				<tr>
					<td><c:out value="${remCourses.courseId}" /></td>
					<td><c:out value="${remCourses.courseName}" /></td>
					<td><c:out value="${remCourses.professor}" /></td>
					<td><c:out value="${remCourses.classtime}" /></td>
					<td><c:out value="${remCourses.examtime}" /></td>
					<td><c:out value="${remCourses.gradeInfo}" /></td>
					<td><c:out value="${remCourses.assignmentInfo}" /></td>
					<td><c:out value="${remCourses.taInfo}" /></td>
					<td><a id="addId" href="/HawkAide/course_remove?course_id=${remCourses.courseId}">REMOVE</a></td>
				</tr>
			</c:forEach>
		</table>
		<br/><br/>
		<form:form method="POST" id="myForm" action="/HawkAide/course_add" modelAttribute="home">
		<table style="margin-left:20%">
			<tr>
				<th>Course Id</th>
				<th>Course Name</th>
				<th>Professor Info</th>
				<th>Class Time</th>
			</tr>
				<tr>
					<td><form:textarea cssStyle="height:40px;" maxlength="20" path="courseId" ></form:textarea></td>
					<td><form:textarea cssStyle="height:40px;" maxlength="50" path="courseName" ></form:textarea></td>
					<td><form:textarea cssStyle="height:40px;" maxlength="50" path="professor" ></form:textarea></td>
					<td><form:textarea cssStyle="height:40px;" maxlength="50" path="classtime" ></form:textarea></td>
				</tr>
				<tr>
					<th>Exam Time</th>
					<th>Grade Info</th>
					<th>Assignment Info</th>
					<th>TA Info</th>
				</tr>
				<tr>
					<td><form:textarea cssStyle="height:40px;" maxlength="50" path="examtime" ></form:textarea></td>
					<td><form:textarea cssStyle="height:40px;" maxlength="50" path="gradeInfo" ></form:textarea></td>
					<td><form:textarea cssStyle="height:40px;" maxlength="50"  path="assignmentInfo" ></form:textarea></td>
					<td><form:textarea cssStyle="height:40px;" maxlength="50" path="taInfo" ></form:textarea></td>
				</tr>
		</table>
		<br/>
		<input style="margin-left:40%;" id="submitId" type="submit"  value="ADD Course">
		<button type="reset" id="resetId" value="RESET">RESET</button>
		</form:form>
		
</div>
</body>
</html>