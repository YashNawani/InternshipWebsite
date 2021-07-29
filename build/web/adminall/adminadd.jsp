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
      Insert Internship
    </div>
	<form class="form" action="addinternship.jsp" method="post">
		<div class="form">
	      


	        
                    
                    <div class="inputfield">
	          <label>Internship Type</label>
	          <div class="custom_select" >
	            <select id="type" name="type">
	              <option value="">Select</option>
	              <option value="Summer Internship" >Summer Internship</option>
	              <option value="Full-Time Job" >Full-Time Job</option>
	              <option value="Paid Internship" >Paid Internship</option>
	              <option value="Freshers Job">Freshers Job</option>
	            </select>
	          </div>
	       </div>
                    
                     <div class="inputfield">
	          <label>Internship Type ID</label>
	          <div class="custom_select" >
	            <select id="typeid" name="typeid">
	              <option value="">Select</option>
	              <option value="1" >1:Summer Internship</option>
	              <option value="2" >2:Full-Time Job</option>
	              <option value="3" >3:Paid Internship</option>
	              <option value="4">4:Freshers Job</option>
	            </select>
	          </div>
	       </div>
	          
	     
                    
	        <div class="inputfield" >
	          <label>Designation</label>
	          <input type="text" class="input" id="desig" name="desig" >
	          
	       </div>
                    
               <div class="inputfield" >
	          <label>Location</label>
	          <input type="text" class="input" id="Location" name="location" >
	          
	       </div>
                    <div class="inputfield" >
	          <label>Available Seats</label>
	          <input type="text" class="input" id="empty" name="empty" >
	          
	       </div>
                    
	       

	      <div class="inputfield">
	          <input type="submit"  class="btn">
	          
	      </div>
	    </div>
	</form>

</div>

</body>
</html>
