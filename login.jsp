<%-- 
    Document   : login
    Created on : Aug 12, 2019, 01:57:35 AM
    Author     : Sankalp
--%>

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
            <form class="form-horizontal" role="form" method="POST" name="regF" onsubmit="return validate()">
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
    }}
%>
            </div>
            </form>
     </div>
    </div>
  </div>
</div>    
            
            
<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">To compete with others ;)</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
            <form class="form-horizontal" role="form" name="reg">            
            <div class="form-group">
            <label class="col-sm-10" for="id">User Id</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="username" name="username" required placeholder="Enter your ID"> 
                <span id="isE"></span>
            </div>
            </div>
            <div class="form-group">
            <label class="col-sm-10" for="password" >Password</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="password" name="password" required placeholder="Hope you didn't forgot :)">
            </div>
            </div>
        <hr noshade style="color:#000000" align="center">
            <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <button type="submit" class="btn btn-success" name="b2">LOGIN</button>
              <a class="btn btn-outline-secondary" style="margin-left: 20px; cursor: pointer;" data-toggle="modal" data-dismiss="modal" data-target="#signup" >Not registered yet?</a>
            </div>
<% 
if(request.getParameter("b2")!=null)
{
                            String id=(String)request.getParameter("username");
                            String pw=(String)request.getParameter("password");
                            /*if((id.equals("admin"))&&(pw.equals("admin")))
                            {
                                response.sendRedirect("admin.jsp");
                            }
                            else
                            {*/
                            Connection con=null;
                            Statement st;
                try
                {
                Class.forName("com.mysql.jdbc.Driver");	
		con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ht","root","");
		st=con.createStatement();
		String sql="select * from login where username='"+id+"' and password='"+pw+"'";
		ResultSet rs=st.executeQuery(sql);
		if(rs.next())
                {
                    session.setAttribute("nm", rs.getString(1)); 
                    session.setAttribute("unm", rs.getString(2));
                    session.setAttribute("pas", rs.getString(3));
                    session.setAttribute("hs", rs.getString(4));    
                    session.setAttribute("hs2", rs.getString(5));
                    response.sendRedirect("home.jsp");                                       
                }
                else
                {                                                         
                    out.println("<script>");
                    out.println("alert('invalid username or password');");
                    out.println("</script>");                    
		}
                }
                catch(Exception e)
                {
                    out.println(e.toString());
                }              
}//}
%>
            </div>
        </form>
      </div>
    </div>
  </div>
</div> 