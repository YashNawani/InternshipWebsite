<%-- 
    Document   : updatemobile
    Created on : 2 Nov, 2020, 10:18:17 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="style1.css">
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="dbsources2" url="jdbc:mysql://localhost:3306/ebank" user="root" password=""/>
        <c:set value='${sessionScope["mobile"]}' var="mobile1" />
        <sql:query dataSource="${dbsources2}" var="tempo1">
            SELECT *  from userdetail where mobile="${mobile1}" ;
        </sql:query>
            
            <div class="wrapper">
    <div class="title">
      Update Internship
    </div>
	<form class="form" action="updatemobileconnect.jsp" method="post">
		<div class="form">
	       <div class="inputfield">
	          <label>Internship Id</label>
	          <input type="integer" class="input" var="jstlfname" id="iid" name="iid">
	       </div>
                     <div class="inputfield">
	          <label>New Mobile Number</label>
	          <input type="integer" class="input" var="jstlfname" id="mobile" name="mobile">
	       </div>
                    
                     <div class="inputfield">
	          <input type="submit"  class="btn">
	          
	      </div>
                    
	    </div>
	</form>

</div>
            
            
            
</html>
