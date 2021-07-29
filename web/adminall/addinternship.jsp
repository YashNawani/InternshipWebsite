


<%@page import="java.sql.*"%>
<%
           
            
            String type = request.getParameter("type");
 
                    String desig = request.getParameter("desig");
                            String location = request.getParameter("location");
                                    int empty = Integer.parseInt(request.getParameter("empty"));
                                    int typeid = Integer.parseInt(request.getParameter("typeid"));
                                    
                                            
                       
            
 try {
   
 
            Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    PreparedStatement pst2;
    int rs;
    ResultSet rs1;
    ResultSet rs2;
    
     
    
            Class.forName("com.mysql.jdbc.Driver");
            
            con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
             pst = con.prepareStatement("INSERT INTO cards VALUES (?,?,?,?,?,?)");
            
             pst.setNull(1, Types.NULL);
             pst.setInt(2, typeid);
            pst.setString(3, type);
            pst.setString(4, desig);
            pst.setString(5, location);
            pst.setInt(6, empty);
          
                       
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