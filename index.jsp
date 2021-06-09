<%--
    Document   : index
    Created on : Aug 3, 2019, 2:55:16 AM
    Author     : Sankalp
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hyper-Typerr: Learn while you play ;)</title>
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/style.css">
        <script src="vendor/jquery.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="vendor/customjs.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    </head>
<body id="grad1">
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container" style="margin-top: 50px; color:whitesmoke;">
                <div class="row">
                    <div class="typewriter">
                        <a href="index.jsp" style="color: whitesmoke;" class="typewriter-text">Hyper-Typer!</a>
                    </div>
                </div>
                <p class="row" style="font-family: cursive;">Improve your typing while you play <blink>;</blink>)</p>
            </div>
        </nav>
        <center><hr size="2" width="80%" noshade style="color:#000000" ></center>
    <div style="margin-left: 25%;" class="col-sm-6">
        <div style="text-align:center; margin-top: 120px;">
            <a style="color:whitesmoke " href="home.jsp" class="btn btn-secondary btn-lg" name="g">Continue as guest</a>
        </div>
        <div class="box" style="text-align: center; margin-top: 50px;">
            <h1 style="color:white;font-family: cursive;" class="section-subheading">OR</h1>
        </div>
        <div style="text-align: center; margin-top: 70px;">
            <button id="sign" type="button" class="btn btn-outline-secondary btn-lg" data-toggle="modal" data-target="#signup">Sign-up</button>
            <button id="log" type="button" class="btn btn-outline-secondary btn-lg" data-toggle="modal" data-target="#login">Login</button>
        </div>
        <%@include file="login.jsp" %>
    </div>
    <div class="typewriter" style="text-align: center; margin-top: 70px; margin-left: 7%;">
        <p class="typewriter-text">A B C D E F G H I J K L M N O P Q  R S T U V W X Y Z</p>
    </div>
</body>
</html>