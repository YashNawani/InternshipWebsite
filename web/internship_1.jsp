
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">


        <link rel="stylesheet" href="navigation.css">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="cards.css">
        
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>

        <style>


            .card-title1 {
                font-size: 30px;
                color: #f23b1b;
            }
            .inner1 {
                text-align: center;
                padding: 40px 40px 0px 40px;
            }
            .card1 {
                display: inline-block;
                height: auto;
                width: 300px;
                margin: 15px;
                padding: 10px;
                
            }
            .title1 {
                font-size: 30px;
                font-weight: 500;
                color: #1976d2;
                padding: 15px;
                text-align: center;
            }
            .btn1 {
                font-weight: bolder;
            }
            .main1 {
                padding-left: 280px;
                display: inline-block;
            }


            .cards1{

                display:hidden;
            }
            .show{
                display:block;
            }
            .container{
                margin: 20px;
                overflow: hidden;
            }

            .tampo{
                list-style: none;
                padding: 8px 20px;
                margin: 5px;
                letter-spacing: 1px;
                cursor: pointer;
            }

            .tampo.active{
                background: #fff;
                color: #000;

            }
        </style>



    </head>
    <body>
        <%! String userdbName;
            String userdbPsw;
            String dbUsertype;
            String formname;
        %>
        <%
            Connection con = null;
            PreparedStatement ps = null;
            ResultSet rs = null;

            String driverName = "com.mysql.jdbc.Driver";
            String url = "jdbc:mysql://localhost:3306/ebank";
            String user = "root";
            String dbpsw = "";
            
            String nameuser = (String)session.getAttribute("name");

            String sql = "select * from userdetail where name=? and password=? and usertype=?";

            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String usertype = request.getParameter("usertype");

            try {
                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, dbpsw);
                ps = con.prepareStatement(sql);
                ps.setString(1, name);
                ps.setString(2, password);
                ps.setString(3, usertype);
                rs = ps.executeQuery();
                if (rs.next()) 
                {
                    userdbName = rs.getString("name");
                    userdbPsw = rs.getString("password");
                    dbUsertype = rs.getString("usertype");
                    
                    
                    
                    
                }
                
            } catch (Exception e) {

            }

        %>

        
        
        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="dbsources" url="jdbc:mysql://localhost:3306/ebank" user="root" password=""/>
        <c:set value='${sessionScope["mobile"]}' var="mobile" />
        
        <sql:query dataSource="${dbsources}" var="dog">
            SELECT * from userdetail;
        </sql:query>
            
         <sql:query dataSource="${dbsources}" var="tempo">
                    SELECT *  from userdetail where mobile="${mobile}" ;
                </sql:query>
        
         <c:forEach var="car" items="${tempo.rows}">
             
        <div class="wrapper design" >
            <input type="checkbox" id="btn" hidden>
            <label for="btn" class="menu-btn">
                <i class="fas fa-bars"></i>
                <i class="fas fa-times"></i>
            </label>
            <nav id="sidebar">
                <div class="title">
                    Account Details</div>
                <div class="list-items">
                    <p>ID:${car.id}</p>
                    <p>Name:${car.name}</p>
                    <p>Password:${car.password}</p>
                    <p>Usertype:${car.usertype}</p>
                    <p>Mobile Number:${car.mobilenumber}</p>
                    
                </div>
                
               
            </nav>
        </div>
         </c:forEach>















        <nav class ="navdesign">
            <nav>
                <label class="logo1">InternSafari</label>
                <ul>
                    <li><a class="active1" href="internship.jsp">Home</a></li>
                    <li><a href="#">Account
                            <i class="fas1 fa-caret-down1"></i>
                        </a>
                        <ul>
                            <li><a href="forgetpass.jsp">Forget Password</a></li>
                            
                            <li><a href="logoutdb.jsp">Logout</a>
                            
                        </ul>
                    </li>
                    <li><a href="#">Resume
                            <i class="fas1 fa-caret-down1"></i>
                        </a>
                        <ul>
                        
                            <li><a href="refillresumeform.jsp">Refill Resume</a></li>
                           
                            
                            
                        </ul>
                    </li>
                    <li><a href="#">Contact</a></li>
                    <li class="nav-item1 dropdown1">
                        <a class="nav-link1 dropdown-toggle1" href="#" id="userDropdown1" role="button" data-toggle="dropdown">
                            <span class="mr-21 d-none1 d-lg-inline1 text-gray-6001 small1"> < /span>
                            <img class="img-profile1 rounded-circle" src="black.jpg">
                        </a>
                    </li>

                </ul>


            </nav>
        </nav>
        <section></section>




        <sql:setDataSource driver="com.mysql.jdbc.Driver" var="dbsource" url="jdbc:mysql://localhost:3306/ebank" user="root" password=""/>


        <sql:query dataSource="${dbsource}" var="cat">
            SELECT * from cards;
        </sql:query>
        

           
            <c:forEach var="id" begin="1" end="100">
                <sql:query dataSource="${dbsource}" var="info">
                    SELECT iname ,iname_id, type, location, emp  from cards where id = "${id}" ;
                </sql:query>
                <c:forEach var="box" items="${info.rows}">
                    <div class="row1 main1">
                        <div class="card1 card ">
                            <div class="container">
                                <div class="card-title1">
                                    <h6>${box.iname}</h6>

                                </div>
                                <div class="card-body1">
                                    <p> ${box.type}</p>
                                    <p>Location : ${box.location}</p>
                                    <p>Empty Seats : ${box.emp}</p>
                                    <c:choose>
         
                                                            <c:when test = "${box.iname_id == 1}">
                                                                        <button name="apply" >
                                                                            <a href="applyfolder/internapply.jsp" >Apply</a>
                                                                        </button>
                                                            </c:when>

                                                            <c:when test = "${box.iname_id == 2}">
                                                                        <button name="apply" >
                                                                            <a href="applyfolder/paidnapply.jsp" >Apply</a>
                                                                        </button>
                                                            </c:when>
                                                            
                                                             <c:when test = "${box.iname_id == 3}">
                                                                        <button name="apply" >
                                                                            <a href="applyfolder/fullnapply.jsp" >Apply</a>
                                                                        </button>
                                                            </c:when>
                                                             <c:when test = "${box.iname_id == 4}">
                                                                        <button name="apply" >
                                                                            <a href="applyfolder/jobapply.jsp" >Apply</a>
                                                                        </button>
                                                            </c:when>
                                        

                                                            <c:otherwise>
                                                               No comment sir...
                                                            </c:otherwise>
                                                         </c:choose>
   
                                   


                                </div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:forEach>
        
                
        <script>
            filterselection("all");

            function filterselection(c) {
                var x, i;
                x = document.getElementsByClassName("card");
                if (c === "all")
                    c = "";
                for (i = 0; i < x.length; i++) {
                    w3AddClass(x[i], "show");
                }

            }
            function w3AddClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.ClassName.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    if (arr1.indexOf(arr2[i] === -1)) {
                        element.ClassName += " " + arr2[i];
                    }
                }
            }
            function w3RemoveClass(element, name) {
                var i, arr1, arr2;
                arr1 = element.className.split(" ");
                arr2 = name.split(" ");
                for (i = 0; i < arr2.length; i++) {
                    while (arr1.indexOf(arr2[i]) > -1) {
                        arr1.splice(arr1.indexOf(arr2[i]), 1);
                    }
                }
                element.className = arr1.join(" ");
            }

            function redirectapply() {
                window.location.href = 'internapply.jsp';


            }




        </script>





        <script src="https://code.jquery.com/jquery-3.5.1.js"
                integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
        crossorigin="anonymous"></script>

        <script type="text/javascript">

            $(document).ready(function () {
                $('.tampo').click(function () {
                    const value = $(this).attr('data-filter');
                    if (value === 'all') {
                        $('.filtering').show('1000');
                    } else {
                        $('.filtering').not('.' + value).hide('1000');
                        $('.filtering').filter('.' + value).show('1000');
                    }

                })
                $('.tampo').click(function () {
                    $(this).addClass('active').siblings().removeClass('active');
                })

            })
        </script>



    </body>
</html>

