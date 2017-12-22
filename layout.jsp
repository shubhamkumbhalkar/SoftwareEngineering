<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><tiles:insertAttribute name="title" ignore="true" /></title> 
<style type="text/css">
.footerClass {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
.headerClass {
    padding: 1em;
    color: white;
    background-color: black;
    clear: left;
    text-align: center;
}
</style>

</head>
<body>
	<div class="headerClass"><tiles:insertAttribute name="header" /></div>  
        <div style="float:left;padding:10px;width:15%;"><tiles:insertAttribute name="menu" /></div>  
        <div style="float:left;padding:10px;width:80%;border-left:1px solid pink;">  
        <tiles:insertAttribute name="body" /></div>  
        <div style="clear:both" class="footerClass"><tiles:insertAttribute name="footer" /></div>  
</body>
</html>