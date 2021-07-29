<%-- 
    Document   : jobapply
    Created on : 24 Oct, 2020, 1:44:51 PM
    Author     : hp
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>fullapply</title>
    </head>
    
        
    <body>
             <%
                 
Connection con= null;

PreparedStatement ps1 = null;

ResultSet rs1 = null;



String url = "jdbc:mysql://localhost:3306/ebank";
String user = "root";
String password = "";

int mobile = (Integer)session.getAttribute("mobile");


try {
    
 Class.forName("com.mysql.jdbc.Driver");
    con = DriverManager.getConnection(url, user, password);
    Statement st =con.createStatement();
    String strr = "select rq,exp,job,part,work  from registration ";
    ps1 = con.prepareStatement("select rq,exp,job,part,work  from registration where mobile=? ");
    ps1.setInt(1,mobile);
    
    rs1 = ps1.executeQuery();
    
  
   while(rs1.next()){
    String st1 = rs1.getString("rq");
    String st2 = rs1.getString("exp");
    String st3 = rs1.getString("job");
    String st4 = rs1.getString("part");
    String st5 = rs1.getString("work");
    
     if(st1 == "school" && st2 == "n" && st4 == "y"){
        response.sendRedirect("Rejected.jsp");
    }
    else{
       response.sendRedirect("Accepted.jsp");
    }
   }
    
    
    
    
}
catch(Exception e){
    
}



%>
        
     
        </body>
            
    
</html>
