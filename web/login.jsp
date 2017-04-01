<%-- 
    Document   : login
    Created on : 23 Mar, 2017, 1:20:44 PM
    Author     : aditya
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
        <h1>
            
            
        </h1>            
            <ul class="menu">
                <li><a href="index.jsp">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="register.jsp">Register</a></li>
                
            </ul>
            <div class="login-box">
                <form action="Login" method="post">
                    <input type="text" name="name"  />
                    <br>
                    <br>
                    <input type="password" name="password" />
                    <br>
                    <br>
                    <select name="sem">
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
                    <input type="submit" Value="Register"/>
                </form>
            </div>
    </body>
</html>
