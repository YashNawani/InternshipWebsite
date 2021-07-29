<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Forgot Password</title>
	<link rel="stylesheet" href="styles.css">
        <link rel="stylesheet" href="style1.css">
</head>
<body>
    <nav class="navbar">
        <div class="max-width">
            <div class="logo">
                    <a href="admindashboard.jsp.jsp">Intern<span>Safari</span></a>
            </div>

            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
</nav>




<div class="wrapper">
    <div class="title">
      Forgot Password
    </div>
	<form class="form" action="Forgotpassdb.jsp" method="post">
		<div class="form">
	      


	        
                    
                  
	          
	     
                    
	        <div class="inputfield" >
	          <label>Mobile Number</label>
	          <input type="integer" class="input" id="uname" name="uname" >
	          
	       </div>
                    
               <div class="inputfield" >
	          <label>New Password</label>
	          <input type="text" class="input" id="newpass" name="newpass" >
	          
	       </div>
                  
                    
	       

	      <div class="inputfield">
	           <button type="Submit" class= "submit-btn">Change Password</button>
	          
	      </div>
	    </div>
	</form>

</div>

</body>
</html>
