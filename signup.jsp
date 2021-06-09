<%-- 
    Document   : signup
    Created on : Aug 12, 2019, 11:12:36 PM
    Author     : Sankalp
--%>
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
<body>
<div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">So that you may check your progress ;)</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <form class="form-horizontal" method="POST" role="form" name="regF" onsubmit="return validate()">
            <div class="form-group">
            <label class="col-sm-10" for="name">Name</label>
            <div class="col-sm-10">
              <input type="text" class="form-control" pattern="[A-Za-z].{2,}" id="name" name="name" required placeholder="Name">
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-10" for="id">User Id</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username" name="username" required placeholder="Must be unique!" onblur="checkExist()"> 
                <span id="isE"></span>
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-10" for="password" >Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="password" minlength="8" name="password" required placeholder="At least 8 character">
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-10" for="confirm_Password">Confirm Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="confirm_Password" minlength="8" name="confirm_Password" required placeholder="Retype-Password">
              <span id="message"></span> 
            </div>
            </div>
<script>
$('#password, #confirm_Password').on('keyup', function () {
  if ($('#password').val()==$('#confirm_Password').val()) {
    $('#message').html('Matching password').css('color', 'green');
  } else 
    $('#message').html('Confirm password must be same as Password!').css('color', 'red');
});
</script>
<hr noshade style="color:#000000" align="center">
            <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-success" name="b1">SIGN-UP</button>
            </div>
<%
    if(request.getParameter("b1")!=null)
    {
        try{
	String name=request.getParameter("name");
        String username=request.getParameter("username");
	String password=request.getParameter("password");        

        Connection con=null;
	Statement st;
	
		Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ht","root","");
		st=con.createStatement();
		String sql="insert into login(name,username,password) values('"+name+"','"+username+"','"+password+"')";
                int res=st.executeUpdate(sql);
		if(res!=0)
		{                  
                    out.println("<script>");
                    out.println("alert('Registration Complete. Login to proceed.');");
                    out.println("</script>");                                  
		}
	}
        catch(Exception e)
	{
            {
                out.println(e.toString());}
           //  response.sendRedirect("error.jsp");
    }}
%>
            </div>
            </form>
     </div>
    </div>
  </div>
</div>    
</body>
</html>
