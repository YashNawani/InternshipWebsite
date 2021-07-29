

<%@page import = "java.sql.*"%>

<%
            
            String fname = request.getParameter("fname");
            String rq = request.getParameter("rq");
            String exp =request.getParameter("exp");
            String job = request.getParameter("job");
            String part = request.getParameter("part");
            String work = request.getParameter("work");
            int mobile = (Integer)session.getAttribute("mobile");
            
            
           
            
 try {
   
            Connection con;
    PreparedStatement pst;
    PreparedStatement pst1;
    int rs;
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
            
            int p2=0;
            PreparedStatement prr=con.prepareStatement("select id from userdetail where mobile=?;");
            prr.setInt(1, mobile);
             ResultSet rss=prr.executeQuery();
            while(rss.next()){
                p2=rss.getInt("id");
            }
            
            
            
            
            
            
            
             pst = con.prepareStatement("insert into registration values(?,?,?,?,?,?,?,?);");
             
             pst.setInt(1, p2);
             pst.setString(2, fname);
            pst.setString(3, rq);
            pst.setString(4, exp);
            pst.setString(5, job);
            pst.setString(6, part);
            pst.setString(7, work);
            pst.setInt(8, mobile);
           
            
           rs = pst.executeUpdate();
             
            if(rs>0)
            {
                response.sendRedirect("resumeformsuccess.jsp");
            }
            else
            {
                out.println("registration not complete.");
            }
 }
 catch (Exception e) {
          System.out.println(e);
        }

%>