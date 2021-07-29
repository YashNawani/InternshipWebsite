<%@page import="java.sql.*"%>
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
                    <a href="admindashboardjsp">Intern<span>Safari</span></a>
            </div>

            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
</nav>




<div class="wrapper">
    <div class="title">
      Delete Internship
    </div>
	<form class="form" action="deleteinternship.jsp" method="post">
		<div class="form">
	       <div class="inputfield">
	          <label>Internship Id</label>
	          <input type="text" class="input" id="id" name="id">
	       </div>


                    
               <div class="inputfield" >
	          <label>Internship Type Id</label>
	          <input type="text" class="input" id="typeid" name="typeid" >
	          
	       </div>
                    
	       
                    
	       

	      <div class="inputfield">
	          <input type="submit"  class="btn">
	          
	      </div>
	    </div>
	</form>

</div>

</body>
</html>
