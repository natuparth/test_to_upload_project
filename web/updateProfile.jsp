<%-- 
    Document   : updateProfile
    Created on : 23 Mar, 2017, 4:22:24 PM
    Author     : aditya
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
            .menu {
                position: top;
                border: 1px solid blue;
                width: 200px;              
                padding: 0px;
                list-style: none;
                float: left;
                margin: 20px;
                padding-top: 10px;
                padding-left: 5px;
            }
            .menu > li {
                width: 100%;
                height: 60px;
                text-align: center;
                font-size: 1.25em;
                
            }
            a {
                text-decoration: none;
            }
            .menu {
                position: top;
                border: 2px solid #0ac;
                color: #0ac;
                width: 200px;              
                padding: 0px;
                list-style: none;
                float: left;
                margin: 20px;
                padding-top: 10px;
                padding-left: 5px;
            }
            .menu > li {
                width: 100%;
                height: 60px;
                text-align: center;
                font-size: 1.25em;
                
            }
            
            a {
                text-decoration: none;
                color: #0ac;
            }
            .login-box {
                width: 500px;
                height: auto;
                border: 2px solid aqua;
                float: left;
                margin-top: 100px;
                margin-left: 100px;
                padding: 50px;
            }
            .login-box > input {
                width: 100%;
                height: 50px;
                margin: 10px;
                padding: 10px;
                
            }
            </style>
    </head>
    <body>
        <h1>Welcome,
            <%
                String userId = (String) session.getAttribute("name");
                if(userId == null) {
                    response.sendRedirect("login.jsp");
                } else {
                    out.println(userId + "</h1>");
                }
                String name, pwd, email, contact;
                int sem;

                try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test1?zeroDateTimeBehavior=convertToNull","root","");
                        PreparedStatement ps = con.prepareStatement("select * from user where name=?;");
                        ps.setString(1, userId);
                        ResultSet rs = ps.executeQuery();
                        
                        if(rs.next()) {
                            name = rs.getString(1);
                             pwd = rs.getString(2);
                             sem = rs.getInt(3);
                             email = rs.getString(4);
                             contact =rs.getString(5);
                             %>
                            <h1>Update Your Profile</h1>
        
        <ul class="menu">
                <li><a href="index.jsp">Home</a></li>                              
        </ul>
            <div class="login-box">
                <form action="Update" method="post"> 
                    <input type="text" name="name" value="<%= name %>" disabled="true" />
                    <br>
                    <br>
                    <input type="password" name="password" value="<%= pwd %>"/>
                    <br>
                    <br>
                    <select name="sem">
                        <option value="<%= sem %>">Sem <%= sem %></option>
                        <option value="1">Sem 1</option>
                        <option value="2">Sem 2</option>
                        <option value="3">Sem 3</option>
                        <option value="4">Sem 4</option>
                        <option value="5">Sem 5</option>
                        <option value="6">Sem 6</option>
                        <option value="7">Sem 7</option>
                        <option value="8">Sem 8</option>
                    </select>
                    <br>
                    <br>
                    <br>
                    <input type="email" name="email" value="<%= email %>"/>
                    <br>
                    <br>
                    <input type="number" name="contact" value="<%= contact %>" />
                    <br>
                    <br>
                    <input type="submit" value="Update" />
                </form>
            </div>
         
            
            <%
                             
                        } else {
                            response.sendRedirect("login.jsp");
                        }
                    } catch (Exception e) {
                    }
            %>
            
            
        
        
    </body>
</html>
