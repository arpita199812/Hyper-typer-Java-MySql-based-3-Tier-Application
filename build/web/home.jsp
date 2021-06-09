<%-- 
    Document   : home
    Created on : Aug 9, 2019, 1:48:04 PM
    Author     : Pankaj
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hyper-Typer: Learn while you play ;)</title>
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"> </script>
        <script src="vendor/customjs.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</head>
    <body id="grad1"> 
<%@include file="login.jsp" %>         
        <%@include file="navbar.jsp" %> 
                <center><hr size="2" width="80%" noshade style="color:#000000"></center>
        <section class="container" style="margin-top: 50px; background-color:grey; color:white; padding:20px; column-width:auto;">
        <div>
         <a style="color: black;" href="g1.jsp"><img src="media/thumb.png" style="width:82px; height:86px" title="White flower" alt="Flower">Alphabet Practice</a>
        </div>
            <hr>
        <div>
         <a style="color: black;" href="g2.jsp"><img src="media/thumb.png" style="width:82px; height:86px" title="White flower" alt="Flower">Word Practice</a>
        </div>
            <hr>
        </section>
    </body>
</html>