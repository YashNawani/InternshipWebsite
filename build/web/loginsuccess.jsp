<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Success</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script> 


        <script type="text/javascript" src="scripts/jquery-1.4.min"></script>
        <script type="text/javascript" src="scripts/jquery.cookie.js"></script>
        <title>Login Success</title>
        <style>
        .textcolor{
           color: #fff;
           text-align: center;
           padding-bottom: 150px;
           font-family: verdana;
        }
    </style>
    </head>
    
 
    
    
    <body class="textcolor" style="background-image: url('style/black.jpg')">
        
        <%
            try{
                
            String dbUsertype = (String)session.getAttribute("usertype");
            
if( dbUsertype.equals("admin"))
{

response.sendRedirect("adminall/admindashboard.jsp");
}
if( dbUsertype.equals("user"))
{
response.sendRedirect("internship.jsp");
}
}
catch(Exception e){
}



%>
        
       <h1>Login Successfull !</h1><br>
        <h1>You will be redirected shortly !</h1>
       
        
           
    </body>
</html>
