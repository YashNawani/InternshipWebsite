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
	<form class="form" action="updateinternship.jsp" method="post">
		<div class="form">
	      

 <sql:query dataSource="${dbsourcess}" var="bike">
                    SELECT *  from cards where id="${sessionScope.jstlfname}" ;
                </sql:query>
                     
                <c:forEach var="truck" items="${bike.rows}">
                    
                   <div class="inputfield" id="id" >
	          <label>Internship Id</label>
                  <input type="Integer" class="input"  value="${truck.id}" name="id" >
	          
	       </div>
                    
                    
                      <div class="inputfield" id="interntype" >
	          <label>Internship Type</label>
	          <div class="custom_select" >
	            <select  name="interntype">
	              <option value="${truck.iname}">${truck.iname}</option>
	              <option value="Summer Internship" >Summer Internship</option>
	              <option value="Full-Time Job" >Full-Time Job</option>
	              <option value="Paid Internship" >Paid Internship</option>
	              <option value="Freshers Job">Freshers Job</option>
	            </select>
	          </div>
	       </div>
                    
                       <div class="inputfield" id="typeid" >
	          <label>Internship Type ID</label>
	          <div class="custom_select" >
	            <select  name="typeid">
	              <option value="${truck.iname_id}">${truck.iname_id}</option>
	              <option value="1" >1:Summer Internship</option>
	              <option value="2" >2:Full-Time Job</option>
	              <option value="3" >3:Paid Internship</option>
	              <option value="4">4:Freshers Job</option>
	            </select>
	          </div>
	       </div>
	          
                    
                    
                    
                    
                   
                    
	        <div class="inputfield" id="desig" >
	          <label>Designation</label>
                  <input type="text" class="input"  value="${truck.type}" name="desig" >
	          
	       </div>
                     <div class="inputfield" id="location" >
	          <label>Location</label>
	          <input type="text" class="input" value="${truck.location}" name="location" >
	          
	       </div>
                    
	        <div class="inputfield"  id="empty">
	          <label>Available Seats</label>
                  <input type="text" class="input" value="${truck.emp}"  name="empty" >
	          
	       </div>

	      <div class="inputfield">
	          <input type="submit"  class="btn">
	          
	      </div>
                    </c:forEach>
	    </div>
	</form>

</div>
<script>
            function change(){
            
                var status = document.getElementbyId("update");
                if(status.value === "1"){
                    
            alert(status);
                    
                    document.getElementbyId("interntype").style.visibility = "visible";
                    document.getElementbyId("typeid").style.visibility="visible";
                    document.getElementbyId("desig").style.visibility="hidden";
                    document.getElementbyId("location").style.visibility="hidden";
                    document.getElementbyId("empty").style.visibility="hidden";
                   
                }
                else if(status.value === "2"){
                    document.getElementbyId("interntype").style.visibility="hidden";
                    document.getElementbyId("typeid").style.visibility="hidden";
                    document.getElementbyId("desig").style.visibility="visible";
                    document.getElementbyId("location").style.visibility="hidden";
                    document.getElementbyId("empty").style.visibility="hidden";
                   
                }
                else if(status.value === "3"){
                    document.getElementbyId("interntype").style.visibility="hidden";
                    document.getElementbyId("typeid").style.visibility="hidden";
                    document.getElementbyId("desig").style.visibility="hidden";
                    document.getElementbyId("location").style.visibility="visible";
                    document.getElementbyId("empty").style.visibility="hidden";
                   
                }
               else if(status.value === "4"){
                    document.getElementbyId("interntype").style.visibility="hidden";
                    document.getElementbyId("typeid").style.visibility="hidden";
                    document.getElementbyId("desig").style.visibility="hidden";
                    document.getElementbyId("location").style.visibility="hidden";
                    document.getElementbyId("empty").style.visibility="visible";
                   
                }
                 else(){
                    document.getElementbyId("interntype").style.visibility="hidden";
                    document.getElementbyId("typeid").style.visibility="hidden";
                    document.getElementbyId("desig").style.visibility="hidden";
                    document.getElementbyId("location").style.visibility="hidden";
                    document.getElementbyId("empty").style.visibility="hidden";
                   
                }
            }
            
            
            
            
        </script>
</body>
</html>
