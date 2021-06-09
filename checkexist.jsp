<%-- 
    Document   : checkexist
    Created on : Aug 7, 2019, 3:34:58 AM
    Author     : Sankalp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/ht", "root", "");
            PreparedStatement ps = con.prepareStatement("SELECT  * FROM login WHERE " + "username = ?");
            ps.setString(1,request.getParameter("username"));
            ResultSet res = ps.executeQuery();
            if(res.first()){
                out.print("User already exists");
            }else{
                out.print("");
            }
        }catch (Exception e)
        {
            out.println(e.toString());
          //response.sendRedirect("error.jsp");
        }
%>