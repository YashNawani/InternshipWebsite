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
<body>
    <nav class="navbar">
        <div class="max-width">
            <div class="logo">
                    <a href="FirstPage.jsp">Intern<span>Safari</span></a>
            </div>

            <div class="menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
</nav>




<div class="wrapper">
    <div class="title">
      RESUME
    </div>
	<form class="form" action="regformconnect.jsp" method="post">
		<div class="form">
	       <div class="inputfield">
	          <label>User Name</label>
                  <input type="text" class="input" id="fname" name="fname" >
	       </div>


	        <div class="inputfield" >
	          <label>Experience(yrs)</label>
	          <input type="radio" class="input" id="exp" name="exp" value="y">
	          <label class="" for="">Yes</label>
	          <input type="radio" id="exp" name="exp" class="input" value="n" >
	          <label class="" for="">No</label>
	       </div>
                    
	        <div class="inputfield">
	          <label>Recent Qualification</label>
	          <div class="custom_select" >
	            <select id="rq" name="rq">
	              <option value="">Select</option>
	              <option value="school" >12th Pass</option>
	              <option value="btech" >B.Tech</option>
	              <option value="bba" >BBA</option>
	              <option value="diploma">Diploma</option>
	            </select>
	          </div>
	       </div>
                    
	        <div class="inputfield" >
	          <label> Available for  </label>
	          <input type="radio" id="part" name="part" class="input" value="y" >
	          <label class="" for="">Part-Time</label>
	          <input type="radio" id="part" name="part" class="input" value="n" >
	          <label class="" for="">Full-Time</label>
	       </div>

	        <div class="inputfield" >
	          <label> Work From Home  </label>
	          <input type="radio" class="input" value="y" id="work" name="work" >
	          <label class="" for="y">Yes</label>
	          <input type="radio" class="input" value="n" id="work" name="work" >
	          <label class="" for="n">No</label>
	       </div>

	         <div class="inputfield" >
	          <label> Looking for  </label>
	          <input type="radio" class="input" value="y" id="job" name="job">
	          <label class="" for="">Internships</label>
	          <input type="radio" class="input" value="n" id="job" name="job" >
	          <label class="" for="">Jobs</label>
	       </div>




	      <div class="inputfield">
	          <input type="submit" value="Register" class="btn">
	          
	      </div>
	    </div>
	</form>

</div>

</body>
</html>
