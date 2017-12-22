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

<c:url value="/login" var="loginUrl"/>
<nav>
<ul>
  <%-- <li><a id="homeId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset0');return false;" title="Click to view Home page"><h3>Login</h3></a></li> --%>
  <li><a id="courseCatalogueId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset1');return false;" title="Click to view Course Catalog"><h3>Course Catalog</h3></a></li>
  <li><a id="libraryId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset2');return false;" title="Click to view Library"><h3>Library</h3></a></li>
  <li><a id="newsAndFeedId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset3');return false;" title="Click to view News and Feed"><h3>News and Feed</h3></a></li>
  <li><a id="academicCalendarId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset4');return false;" title="Click to view Academic Calendar"><h3>Academic Calendar</h3></a></li>
  <li><a id="emergencyDetailsId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Emergency Details"><h3>Emergency Details</h3></a></li>
  <li><a id="onCampusJobId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Emergency Details"><h3>On-Campus Jobs</h3></a></li>
  <li><a id="discussionForumId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Emergency Details"><h3>Discussion Forum</h3></a></li>
  <li><a id="diningId" href="<c:out value='${loginUrl}'/>" onclick="menu('dataset5');return false;" title="Click to view Emergency Details"><h3>Dining</h3></a></li>
</ul>
</nav>

</div>
</body>
</html>