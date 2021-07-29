<%-- 
    Document   : adminupdatedb1
    Created on : 30 Oct, 2020, 7:09:58 PM
    Author     : hp
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="refresh" content="1;url=adminupdate.jsp" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background: url('black.jpg')">
        <c:set var="jstlfname" value="${param.fname}" scope="session"/>
        <h1>Please Wait a Moment</h1>
    </body>
</html>
