
<%@page import="com.sun.org.apache.bcel.internal.generic.Type"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title></title>
</head>
<body>
<%
            Cookie Rname = new Cookie("Rname", request.getParameter("Rname"));
            Rname.setMaxAge(60*2); 
            response.addCookie( Rname );
            
            String Rname1 = request.getParameter("Rname");
            String Rpass = request.getParameter("Rpassword");
            String utype = "user";
            int mobile = Integer.parseInt( request.getParameter("mobile"));
            
            
 try {
   
            Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    PreparedStatement pst2;
    int rs;
    ResultSet rs1;
    
        
      
    
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
            
           
                        
                                    pst = con.prepareStatement("INSERT INTO userdetail VALUES (?,?,?,?,?)");
            
             pst.setNull(1, Types.NULL);
             pst.setString(2, Rname1);
            pst.setString(3, Rpass);
            pst.setString(4, utype);
            pst.setInt(5, mobile);
            
          
                       
           rs = pst.executeUpdate();
           
            if(rs>0)
            {
                response.sendRedirect("registersuccess.jsp");
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