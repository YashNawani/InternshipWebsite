


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
<%
           
            
            String type = request.getParameter("interntype");
 
                    String desig = request.getParameter("desig");
                            String location = request.getParameter("location");
                                    int empty = Integer.parseInt(request.getParameter("empty"));
                                            int typeid = Integer.parseInt(request.getParameter("typeid"));
                     int id = Integer.parseInt(request.getParameter("id"));
           
            
 try {
   
            Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    int rs;
    
    
    
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
             pst = con.prepareStatement("UPDATE  cards set iname_id=?,iname=?,type=?,location=?,emp=? where id=?");
            
            
             pst.setInt(1, typeid);
            pst.setString(2, type);
            pst.setString(3, desig);
            pst.setString(4, location);
            pst.setInt(5,empty);
            
            pst.setInt(6, id );
          
                       
           rs = pst.executeUpdate();
           
            if(rs>0)
            {
                
                
                response.sendRedirect("taskcomplete.jsp");
            }
            else
            {
                out.println("registration not complete.");
            }
 }
 catch (Exception e) {
          
        }

%>
</body>
</html>