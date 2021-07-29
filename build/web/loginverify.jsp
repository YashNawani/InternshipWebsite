<%-- 
    Document   : login
    Created on : 30 Sep, 2020, 3:36:54 PM
    Author     : hp
--%>

<%@page import = "java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
<%! int userdbName;
String userdbPsw;
String dbUsertype;
String formname;
%>
<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/ebank";
String user = "root";
String dbpsw = "";

String sql = "select * from userdetail where mobile=? and password=? and usertype=?";

int name = Integer.parseInt(request.getParameter("mobilenumber"));     
String password = request.getParameter("password");
String usertype = request.getParameter("usertype");

if((!( name <=0) && !(password.equals(null) || password.equals(""))) && !usertype.equals("select"))
{
try{
Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
ps = con.prepareStatement(sql);
ps.setInt(1, name);
ps.setString(2, password);
ps.setString(3, usertype);
rs = ps.executeQuery();
if(rs.next())
{ 
userdbName = rs.getInt("mobile");
userdbPsw = rs.getString("password");
dbUsertype = rs.getString("usertype");
if(name == userdbName && password.equals(userdbPsw) && usertype.equals(dbUsertype))
{
    
session.setAttribute("mobile",userdbName);
session.setAttribute("usertype", dbUsertype);
response.sendRedirect("loginsuccess.jsp");
        

} 
}
else
response.sendRedirect("error.jsp");
rs.close();
ps.close(); 
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/home.jsp").include(request, response);
}
%>
</body>
</html>