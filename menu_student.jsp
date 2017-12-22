<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<html>
<head>
<style type="text/css">
nav {
    float: left;
    max-width: 250px;
    margin: 0;
    padding: 1em;
}

nav ul {
    list-style-type: none;
    padding: 0;
}
   
nav ul a {
    text-decoration: none;
}
li a {
    display: block;
    color: #000;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #3C3CFF;
    color: white;
}

li a:hover:not(.active) {
    background-color: #555;
    color: white;
}
</style>

</head>
<body>
<div class="container">

<c:url value="/home_student" var="homeUrl"/>
<c:url value="/course_student" var="courseUrl"/>
<c:url value="/library_student" var="libraryUrl"/>
<c:url value="/news_student" var="newsUrl"/>
<c:url value="/academic_student" var="academicUrl"/>
<c:url value="/emergency_student" var="emergencyUrl"/>
<c:url value="/oncampus_student" var="oncampusUrl"/>
<c:url value="/discussion_student" var="discussionUrl"/>
<c:url value="/dining_student" var="diningUrl"/>
<c:url value="/logout" var="logoutUrl"/>
<nav>
<ul>
  <li><a id="homeId" href="<c:out value='${homeUrl}'/>" onclick="menu('dataset0');return false;" title="Click to view Home page"><h3>Home</h3></a></li>
  <li><a id="courseCatalogueId" href="<c:out value='${courseUrl}'/>" onclick="menu('dataset1');return false;" title="Click to view Course Catalog"><h3>Course Catalog</h3></a></li>
  <li><a id="libraryId" href="<c:out value='${libraryUrl}'/>" onclick="menu('dataset2');return false;" title="Click to view Library"><h3>Library</h3></a></li>
  <li><a id="newsAndFeedId" href="<c:out value='${newsUrl}'/>" onclick="menu('dataset3');return false;" title="Click to view News and Feed"><h3>News and Feed</h3></a></li>
  <li><a id="academicCalendarId" href="<c:out value='${academicUrl}'/>" onclick="menu('dataset4');return false;" title="Click to view Academic Calendar"><h3>Academic Calendar</h3></a></li>
  <li><a id="emergencyDetailsId" href="<c:out value='${emergencyUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Emergency Details"><h3>Emergency Details</h3></a></li>
  <li><a id="onCampusJobId" href="<c:out value='${oncampusUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view on campus Details"><h3>On-Campus Jobs</h3></a></li>
  <li><a id="discussionForumId" href="<c:out value='${discussionUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Discussion Forum Details"><h3>Discussion Forum</h3></a></li>
  <li><a id="diningId" href="<c:out value='${diningUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Dining Details"><h3>Dining</h3></a></li>
  <li><a id="logoutId" href="<c:out value='${logoutUrl}'/>" onclick="menu('dataset5');return false;" title="Click to logout"><h3>Logout</h3></a></li>
</ul>
</nav>

</div>
</body>
</html>