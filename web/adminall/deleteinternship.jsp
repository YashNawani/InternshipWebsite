


<%@page import="java.sql.*"%>
<%
           
            int id = Integer.parseInt(request.getParameter("id"));
           
                                    
                                            
                       
            
 try {
  
            Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    int rs;
    
     
    
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
             pst = con.prepareStatement("DELETE FROM  cards where id = ?");
            
             pst.setInt(1,id);
            
          
                       
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