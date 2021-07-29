<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
    <html lang="en">
  
    <head>
	<meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registration Form</title>
	<link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="style1.css">
        </head>
        
        <body style=" background: url(black.jpg)">
            
    <nav class="navbar">
        <div class="max-width">
            <div class="logo">
                    <a href="admindashboard.jsp">Intern<span>Safari</span></a>
            </div>

            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </nav>


<sql:setDataSource driver="com.mysql.jdbc.Driver" var="dbsourcess" url="jdbc:mysql://localhost:3306/ebank" user="root" password=""/>

 
        

<div class="wrapper">
    <div class="title">
      Update Internship
    </div>
	<form class="form" action="adminupdatedb.jsp" method="post">
		<div class="form">
	       <div class="inputfield">
	          <label>Internship Id</label>
	          <input type="integer" class="input" var="iid" id="fname" name="fname">
	       </div>
                    
                    
                    
                     <div class="inputfield">
	          <input type="submit"  class="btn">
	          
	      </div>
                    
	    </div>
	</form>

</div>
<script>

</body>
</html>
