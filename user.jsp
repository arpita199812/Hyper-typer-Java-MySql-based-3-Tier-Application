
<%-- 
    Document   : g2
    Created on : Sep 25, 2019, 2:20:26 AM
    Author     : Sankalp
--%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="login.jsp" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Update Data</title>
    <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="vendor/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="vendor/customjs.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>    

</head>
<body id="grad1">    
        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container" style="margin-top: 10px; color:whitesmoke;">  
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <div class="typewriter">
                    <a href="index.jsp" class="typewriter-text" style='color: whitesmoke;'>Hyper-Typer!</a>        
                        </div>
                    </li>
                    <li class="nav-item">
                        <p style="font-family: cursive;">Improve your typing while you play <blink>;</blink>)</p>  
                    </li>
                </ul>
                <ul class="navbar-nav ml-auto" style="margin-right: -500px;">                             
                    <img class="rounded-circle img-fluid" src="media/p.png" height="35" width="35">  
                </ul>
                           
                 
                
                <ul class="navbar-nav text-uppercase ml-auto">                             
                    <a class="nav-link js-scroll-trigger" style="color: whitesmoke; font-family: cursive;">
            <%  String name;
                if(session.getAttribute("nm")!=null)
                {
                name=(String)session.getAttribute("nm");                       
                out.println("Hello!  "+name);
                }
                else
                {                                      
                out.println("Hello Guest !");
                }                
            %>                        
                    </a>                 
    <%          out.println("<form method='get' action=''>");                
                if(session.getAttribute("nm")!=null)
                {                                  
                out.println("<input type='submit' value='LOGOUT' name='bn2' style='border:none; background-color: transparent; color:white; margin-top:13px;' />");                                                         
                if(request.getParameter("bn2")!=null)
                {        
                try
                {                                
                session.setAttribute("nm",null);                 
                response.sendRedirect("index.jsp");                    
                }                            
                catch(Exception e)
                    {
                        out.println(e.toString());
                    }
                }                
                out.println("</form>");
                }               
                else
                {                                                     
                out.println("<input type='button' value='LOGIN' data-toggle='modal' data-target='#login' style='border:none; background-color: transparent; color:white; margin-top:13px;' />");                                                                        
                out.println("</form>");
                } 
                
    %>             
                </ul>                   
            </div>                
        </nav>
    <center><hr size="2" width="80%" noshade style="color:#000000"></center>
<div style="text-align: center; margin-top: 100px;">    
<%   
    String uid;
    String uname;
    String up;
 uid = (String)session.getAttribute("unm");    
 uname = (String)session.getAttribute("nm"); 
 up = (String)session.getAttribute("pas"); 
                       
%>
<center>
    <h1><blink>Update Name/Password</blink></h1>
<div class="table" style="border:3px;">
<form class="form-horizontal" method="POST" style="font-family: cursive;">
<br>
<div class="col-sm-4">
Name:<br>
<input class="form-control" type="text" name="newname" value="<%out.println(uname); %>">
<br>
<br>
Password:<br>
<input class="form-control" type="password" name="newpass" value="<%out.println(up); %>">
<br>
<br><br>
<input class="btn btn-outline-secondary"  type="submit" name="upp" value="submit">
</div>
<%
    if(request.getParameter("upp")!=null)
    {
        try{
	String newname=request.getParameter("newname");        
	String newpass=request.getParameter("newpass");        
        Connection con=null;
	Statement st;	
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ht","root","password");
		st=con.createStatement();
		String sql="UPDATE login SET name='"+newname+"',password='"+newpass+"' WHERE username='"+uid+"'";                
                int res=st.executeUpdate(sql);
		if(res!=0)
		{
                    out.println("<script>");
                    out.println("alert('Update complete. Logout and relogin to view changes');");
                    out.println("</script>");                                  
		}                
	}
        catch(Exception e)
	{
            {
                out.println(e.toString());}           
    }}
%>
</form>
</div>
</center>
</div>    
</body>
</html>