

<%@page import = "java.sql.*"%>

<%
            
            String fname = request.getParameter("fname");
            String rq = request.getParameter("rq");
            String exp =request.getParameter("exp");
            String job = request.getParameter("job");
            String part = request.getParameter("part");
            String work = request.getParameter("work");
            int id= Integer.parseInt(request.getParameter("id"));
            
            
           
            
 try {
   
            Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    int rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
            
          
            
            
            
            
            
            
            
             pst = con.prepareStatement("update registration set fname=?,rq=?,exp=?,job=?,part=?,work=? where id=? ;");
             
             
             pst.setString(1, fname);
            pst.setString(2, rq);
            pst.setString(3, exp);
            pst.setString(4, job);
            pst.setString(5, part);
            pst.setString(6, work);
            pst.setInt(7, id);
           
            
           rs = pst.executeUpdate();
             
            if(rs>0)
            {
                response.sendRedirect("resumeupdatesuccess.jsp");
            }
            else
            {
                out.println("registration not complete.");
                Thread.sleep(2000);
                response.sendRedirect("internship.jsp");
            }
 }
 catch (Exception e) {
          System.out.println(e);
        }

%>