
<%@page import="java.sql.*"%>
<%
    int id = Integer.parseInt(request.getParameter("iid"));
    int mobile = Integer.parseInt(request.getParameter("mobile"));
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/ebank";
    String user = "root";
    String dbpsw = "";
    
    
Connection con;
PreparedStatement pst,pst1;
int rs,rs1;

Class.forName(driverName);
con = DriverManager.getConnection(url, user, dbpsw);
pst = con.prepareStatement("update userdetail set mobile=? where id=?");
pst.setInt(1, mobile);
pst.setInt(2, id);
rs =pst.executeUpdate();



pst1 = con.prepareStatement("update registration set mobile=? where id=?");
pst1.setInt(1, mobile);
pst1.setInt(2, id);
rs1 =pst1.executeUpdate();

if(rs>0 && rs1>0)
response.sendRedirect("updatemobilecomplete.jsp");
else
{
out.print("Error Updating Mobile Number");
Thread.sleep(2000);
response.sendRedirect("internship.jsp");
}
    %>