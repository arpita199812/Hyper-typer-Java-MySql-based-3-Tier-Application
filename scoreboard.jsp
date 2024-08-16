<%--
    Document   : admin
    Created on : Sep 21, 2019, 3:12:11 AM
    Author     : Sankalp
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <title>Hyper-Typer: Learn while you play ;)</title>
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="vendor/style.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="vendor/customjs.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
</head>

    <body id="grad1">        
        <div class="container" style="margin-top: 50px; color:whitesmoke;">
        <div class="row">
        <div class="typewriter">
        <a href="index.jsp" style="color: whitesmoke;" class="typewriter-text">Hyper-Typer!</a>
        </div>
        </div>
        <p class="row" style="font-family: cursive;">Improve your typing while you play <blink>;</blink>)</p>
        </div>
        <center><hr size="2" width="80%" noshade style="color:#000000" ></center>
        <br><br>
        <div style="margin-left: 23%;" class="col-sm-7">
            <h4>Current Greatest Typers on this platform for "alphabet practice" are :</h4>
<%        
            Connection con=null;
            Connection con2=null;
            Statement st,st2;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ht","root","password");
                con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ht","root","password");
		st=con.createStatement();
                st2=con.createStatement();
		String sql="SELECT Name, username, Score FROM login WHERE Score = (SELECT MAX(Score) FROM login)";
		ResultSet rs=st.executeQuery(sql);		 
%>
        <br><hr>
        <TABLE BORDER="3" width="700">
            <TR>
                <TH>ID</TH>
                <TH>Name</TH>
                <TH>Score</TH>
            </TR>
            <% while(rs.next()){ %>
            <TR>
                <TD> <%= rs.getString(2) %></td>
                <TD> <%= rs.getString(1) %></TD>
                <TD> <%= rs.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
        </div>
        <br><br>
        <div style="margin-left: 23%;" class="col-sm-6">
            <h4>Current Greatest Typer on this platform for "Word practice" are :</h4>
        <br><hr>
<% 
		String sql2="SELECT Name, username, Score2 FROM login WHERE Score2 = (SELECT MAX(Score2) FROM login)";
		ResultSet rs2=st2.executeQuery(sql2);		 
%>
        <TABLE BORDER="3    " width="700">
            <TR>
                <TH>ID</TH>
                <TH>Name</TH>
                <TH>Score</TH>
            </TR>
            <% while(rs2.next()){ %>
            <TR>
                <TD> <%= rs2.getString(2) %></td>
                <TD> <%= rs2.getString(1) %></TD>
                <TD> <%= rs2.getString(3) %></TD>
            </TR>
            <% } %>
        </TABLE>
<%               }
                catch(Exception e)
                {
                    out.println(e.toString());
                }              
%> 
        </div>
        <div class="typewriter" style="text-align: center; margin-top: 70px; margin-left: 7%;">
            <p class="typewriter-text">A B C D E F G H I J K L M N O P Q  R S T U V W X Y Z</p>        
        </div>
    </body>
</html>