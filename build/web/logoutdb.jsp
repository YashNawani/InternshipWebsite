<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="refresh" content="3; URL=FirstPage.jsp" />
<style>
        .textcolor{
           color: #fff;
           text-align: center;
           padding-bottom: 150px;
           font-family: verdana;
        }
        .logoutbtn{
           font-size:30px;
           background-color: #fc1c03;
           color: #fff;
        }
    </style>
<title>Logout</title>
</head>
<body class="textcolor" style="background-image: url('style/black.jpg')">
<% session.invalidate(); %>
<h1>You have been successfully logged out </h1>



</body>
</html>