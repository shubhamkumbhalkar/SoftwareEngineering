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
	<div style="height: 800px;">
		<h1 style="margin-left: 40%">Course Catalog</h1>
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
				<th>Remove Course</th>
			</tr>
			<c:forEach items="${courseInfo}" var="courseInfo">
				<tr>
					<td><c:out value="${courseInfo.courseId}" /></td>
					<td><c:out value="${courseInfo.courseName}" /></td>
					<td><c:out value="${courseInfo.professor}" /></td>
					<td><c:out value="${courseInfo.classtime}" /></td>
					<td><c:out value="${courseInfo.examtime}" /></td>
					<td><c:out value="${courseInfo.gradeInfo}" /></td>
					<td><c:out value="${courseInfo.assignmentInfo}" /></td>
					<td><c:out value="${courseInfo.taInfo}" /></td>
					<td><a id="removeId" href="/HawkAide/remove_course?course_id=${courseInfo.courseId}">REMOVE</a></td>
				</tr>
			</c:forEach>
		</table>
		<br/><br/>
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
					<td><a id="addId" href="/HawkAide/add_course?course_id=${remCourses.courseId}">ADD</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>