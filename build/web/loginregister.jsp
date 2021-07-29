<%@page import="java.sql.*"%>

<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="style1.css">
        <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s" %>

    </head>
    <style>
        .form-box{
            width: 380px;
            height: 520px;
            position: relative;
            margin: 6% auto;
            background: #fff;
            padding: 5px;
            overflow: hidden;
        }
    </style>
    <body>
        <%
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            String url = "jdbc:mysql://localhost/ebank";
            String user = "root";
            String password = "";

            String sql = "select usertype from userdetail";

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(url, user, password);
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
        %>

        <nav class="navbar">
            <div class="max-width">
                <div class="logo">
                    <a href="FirstPage.jsp">Intern<span>Safari</span></a>
                </div>

                <div class="menu-btn">
                    <i class="fas fa-bars"></i>
                </div>
            </div>
        </nav>




        <div class="hero">

            <div class="form-box">

                <div class="button-box">

                    <div id="btn"></div>

                    <button type="button" class="toggle-btn" onclick="login()">Log In</button>
                    <button type="button" class="toggle-btn" onclick="register()">Register</button>

                </div>
                <div class="social-icons">
                    <img src="style/facebooksmall.png">
                    <img src="style/instasmall.jpg">
                </div>




                <form id="login" method="post" action="loginverify.jsp" class="input-group"  >

                    <input type="integer" class=" input-field" name="mobilenumber" placeholder="Mobile Number">
                    <input type="password" class="input-field" name="password" placeholder="password">
                    <div >

                        <select name="usertype" class=" input-field" >
                            <option value="select">select</option>
                            <%
                                while (rs.next()) {
                                    String usertype = rs.getString("usertype");
                            %>
                            <option value=<%=usertype%>><%=usertype%></option>
                            <%
                                    }
                                } catch (SQLException sqe) {
                                    out.println("home" + sqe);
                                }
                            %>
                        </select>
                    </div>

                    <input type="submit" class="submit-btn" value="submit">




                </form>


                <form action ="registerverify.jsp" method="POST" id="register" class="input-group" > 

                    <input type="text" class="input-field" id="Rname" name="Rname" placeholder="Username" required>  



                    <input type="password" class="input-field" id="Rpassword" name="Rpassword" placeholder="Password" required>
                    <input type="checkbox" class="check-box" onclick="myFunction()"> Show Password
                    <input type="mobile" class="input-field" id="mobile" name="mobile" placeholder="Mobile Number" required>

                    <script>
                        
                        function myFunction() {
                            var x = document.getElementById("Rpassword");
                            if (x.type === "password") {
                                x.type = "text";
                            } else {
                                x.type = "password";
                            }
                        }

                        var a = document.getElementById("login");
                        var b = document.getElementById("register");
                        var c = document.getElementById("btn");

                        function register() {
                            a.style.left = "-400px";
                            b.style.left = "50px";
                            c.style.left = "110px"
                        }
                        function login() {
                            a.style.left = "50px";
                            b.style.left = "450px";
                            c.style.left = "0px"
                        }
                    </script>
                   
                    <button type="Submit" class= "submit-btn">Submit</button>



                </form>


            </div>
        </div>





    </body>
</html>
