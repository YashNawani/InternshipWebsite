<%@page import="java.sql.*"%>
<%
    int mobile = Integer.parseInt(request.getParameter("uname"));
    String pass = request.getParameter("newpass");
    
Connection con;
PreparedStatement ps1;
PreparedStatement ps2;
int rs;

out.print("Updating Password Please Wait !");
Class.forName("com.mysql.jdbc.Driver");
con = DriverManager.getConnection("jdbc:mysql://localhost/ebank", "root" , "");
ps1 = con.prepareStatement("UPDATE userdetail set password=? where mobile=? ");
ps1.setString(1, pass);
ps1.setInt(2, mobile);

rs = ps1.executeUpdate();

if(rs>0)
{
    response.sendRedirect("forgetpasssuccess.jsp");
}
else{
    
    System.out.println("Error in changing password");

}
    %>
    