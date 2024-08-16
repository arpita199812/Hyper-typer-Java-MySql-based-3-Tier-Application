<%-- 
    Document   : save
    Created on : Oct 11, 2019, 10:16:50 AM
    Author     : Pankaj
    "UPDATE login SET score=(?) WHERE " + "username = ?"
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%

    try{
	String score = request.getParameter("score");
        String username = (String)session.getAttribute("unm");  
        String pag = (String)session.getAttribute("pag"); 
        Connection con=null;
	Statement st;
	
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ht","root","password");
		st=con.createStatement();
		String sql="UPDATE login SET "+pag+"='"+score+"' WHERE username = '"+username+"'";
                st.executeUpdate(sql);
	}
        catch(Exception e)
	{
            {
                out.println(e.toString());}
           //  response.sendRedirect("error.jsp");
    }
%>