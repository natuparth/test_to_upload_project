<%-- 
    Document   : index.jsp
    Created on : 23 Mar, 2017, 4:01:44 PM
    Author     : aditya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            
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
            .question {
                width: 700px;
                height: 500px;
                overflow: scroll;
                border: 2px solid #888;
                float: left;
                margin: 10px;
                margin-left: 50px;
                padding: 40px;
                
            } .i-question {
                border: 2px solid #888;
                padding: 10px;
                margin: 10px;
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
                    out.println(userId);
                }
            %>
            
            
        </h1>
            
            <ul class="menu">
                <li><a href="index.jsp">Home Page</a></li>
                <li><a href="Logout">Logout</a></li>
                <li><a href="updateProfile.jsp">UpdateProfile</a></li>                
            </ul>
            
            <div class="question">
                <h4>Question for Semester <%= session.getAttribute("semester") %> </h4>
                
                <div class="i-question">
                    This is a dummy question ?
                    <br>
                    <br>
                    <input type="radio"/> Option 1
                    <input type="radio"/> Option 2
                    <input type="radio"/> Option 3
                    <input type="radio"/> Option 4
                </div>
                 <div class="i-question">
                    This is a dummy question ?
                    <br>
                    <br>
                    <input type="radio"/> Option 1
                    <input type="radio"/> Option 2
                    <input type="radio"/> Option 3
                    <input type="radio"/> Option 4
                </div>
            </div>
    </body>
</html>
