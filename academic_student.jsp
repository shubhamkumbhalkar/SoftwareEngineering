<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="https://code.jquery.com/jquery-3.2.1.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.19.1/moment.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.6.2/fullcalendar.js'></script>
<link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/fullcalendar/3.6.2/fullcalendar.css' />
<script type="text/javascript">
$(document).ready(function() {

	$('#calendar').fullCalendar({
		events: [
	        {
	            title  : 'CS487 Homework-11:59PM',
	            start  : '2017-11-17'
	        },
	        {
	            title  : 'CS487 Presentation-01:50PM',
	            start  : '2017-11-28'
	        },
	        {
	            title  : 'CS487 Homework-11:59PM',
	            start  : '2017-11-21',
	        }
	    ]

	});

});

</script>

</head>
<body>
<div style="height:1000px">
<h1 style="margin-left:40%">Academic Calendar</h1>
<div id="calendar" style="height:500px;"></div>

</div>
</body>
</html>