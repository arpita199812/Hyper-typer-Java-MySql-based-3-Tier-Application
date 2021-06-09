package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/login.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Hyper-Typerr: Learn while you play ;)</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendor/bootstrap/css/bootstrap.min.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"vendor/style.css\">\n");
      out.write("        <script src=\"vendor/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"vendor/customjs.js\"></script>\n");
      out.write("        <script src=\"vendor/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("<body id=\"grad1\">\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\">\n");
      out.write("            <div class=\"container\" style=\"margin-top: 50px; color:whitesmoke;\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"typewriter\">\n");
      out.write("                        <a href=\"index.jsp\" style=\"color: whitesmoke;\" class=\"typewriter-text\">Hyper-Typer!</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <p class=\"row\" style=\"font-family: cursive;\">Improve your typing while you play <blink>;</blink>)</p>\n");
      out.write("            </div>\n");
      out.write("        </nav>\n");
      out.write("        <center><hr size=\"2\" width=\"80%\" noshade style=\"color:#000000\" ></center>\n");
      out.write("    <div style=\"margin-left: 25%;\" class=\"col-sm-6\">\n");
      out.write("        <div style=\"text-align:center; margin-top: 120px;\">\n");
      out.write("            <a style=\"color:whitesmoke \" href=\"home.jsp\" class=\"btn btn-secondary btn-lg\" name=\"g\">Continue as guest</a>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"box\" style=\"text-align: center; margin-top: 50px;\">\n");
      out.write("            <h1 style=\"color:white;font-family: cursive;\" class=\"section-subheading\">OR</h1>\n");
      out.write("        </div>\n");
      out.write("        <div style=\"text-align: center; margin-top: 70px;\">\n");
      out.write("            <button id=\"sign\" type=\"button\" class=\"btn btn-outline-secondary btn-lg\" data-toggle=\"modal\" data-target=\"#signup\">Sign-up</button>\n");
      out.write("            <button id=\"log\" type=\"button\" class=\"btn btn-outline-secondary btn-lg\" data-toggle=\"modal\" data-target=\"#login\">Login</button>\n");
      out.write("        </div>\n");
      out.write("        ");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"modal fade\" id=\"signup\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">So that you may check your progress ;)</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("            <form class=\"form-horizontal\" role=\"form\" method=\"POST\" name=\"regF\" onsubmit=\"return validate()\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label class=\"col-sm-10\" for=\"name\">Name</label>\n");
      out.write("            <div class=\"col-sm-10\">\n");
      out.write("              <input type=\"text\" class=\"form-control\" pattern=\"[A-Za-z].{2,}\" id=\"name\" name=\"name\" required placeholder=\"Name\">\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label class=\"col-sm-10\" for=\"id\">User Id</label>\n");
      out.write("            <div class=\"col-sm-10\">\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"username\" name=\"username\" required placeholder=\"Must be unique!\" onblur=\"checkExist()\"> \n");
      out.write("                <span id=\"isE\"></span>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label class=\"col-sm-10\" for=\"password\" >Password</label>\n");
      out.write("            <div class=\"col-sm-10\">\n");
      out.write("                <input type=\"password\" class=\"form-control\" id=\"password\" minlength=\"8\" name=\"password\" required placeholder=\"At least 8 character\">\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label class=\"col-sm-10\" for=\"confirm_Password\">Confirm Password</label>\n");
      out.write("            <div class=\"col-sm-10\">\n");
      out.write("                <input type=\"password\" class=\"form-control\" id=\"confirm_Password\" minlength=\"8\" name=\"confirm_Password\" required placeholder=\"Retype-Password\">\n");
      out.write("              <span id=\"message\"></span> \n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("<script>\n");
      out.write("$('#password, #confirm_Password').on('keyup', function () {\n");
      out.write("  if ($('#password').val()==$('#confirm_Password').val()) {\n");
      out.write("    $('#message').html('Matching password').css('color', 'green');\n");
      out.write("  } else \n");
      out.write("    $('#message').html('Confirm password must be same as Password!').css('color', 'red');\n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<hr noshade style=\"color:#000000\" align=\"center\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("              <button type=\"submit\" class=\"btn btn-success\" name=\"b1\">SIGN-UP</button>\n");
      out.write("            </div>\n");

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

      out.write("\n");
      out.write("            </div>\n");
      out.write("            </form>\n");
      out.write("     </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div>    \n");
      out.write("            \n");
      out.write("            \n");
      out.write("<div class=\"modal fade\" id=\"login\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"exampleModalCenterTitle\" aria-hidden=\"true\">\n");
      out.write("  <div class=\"modal-dialog modal-dialog-centered\" role=\"document\">\n");
      out.write("    <div class=\"modal-content\">\n");
      out.write("      <div class=\"modal-header\">\n");
      out.write("        <h5 class=\"modal-title\" id=\"exampleModalLongTitle\">To compete with others ;)</h5>\n");
      out.write("        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("          <span aria-hidden=\"true\">&times;</span>\n");
      out.write("        </button>\n");
      out.write("      </div>\n");
      out.write("      <div class=\"modal-body\">\n");
      out.write("            <form class=\"form-horizontal\" role=\"form\" name=\"reg\">            \n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label class=\"col-sm-10\" for=\"id\">User Id</label>\n");
      out.write("            <div class=\"col-sm-10\">\n");
      out.write("                <input type=\"text\" class=\"form-control\" id=\"username\" name=\"username\" required placeholder=\"Enter your ID\"> \n");
      out.write("                <span id=\"isE\"></span>\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <label class=\"col-sm-10\" for=\"password\" >Password</label>\n");
      out.write("            <div class=\"col-sm-10\">\n");
      out.write("                <input type=\"password\" class=\"form-control\" id=\"password\" name=\"password\" required placeholder=\"Hope you didn't forgot :)\">\n");
      out.write("            </div>\n");
      out.write("            </div>\n");
      out.write("        <hr noshade style=\"color:#000000\" align=\"center\">\n");
      out.write("            <div class=\"form-group\">\n");
      out.write("            <div class=\"col-sm-offset-2 col-sm-10\">\n");
      out.write("              <button type=\"submit\" class=\"btn btn-success\" name=\"b2\">LOGIN</button>\n");
      out.write("              <a class=\"btn btn-outline-secondary\" style=\"margin-left: 20px; cursor: pointer;\" data-toggle=\"modal\" data-dismiss=\"modal\" data-target=\"#signup\" >Not registered yet?</a>\n");
      out.write("            </div>\n");
 
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

      out.write("\n");
      out.write("            </div>\n");
      out.write("        </form>\n");
      out.write("      </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</div> ");
      out.write("\n");
      out.write("    </div>\n");
      out.write("    <div class=\"typewriter\" style=\"text-align: center; margin-top: 70px; margin-left: 7%;\">\n");
      out.write("        <p class=\"typewriter-text\">A B C D E F G H I J K L M N O P Q  R S T U V W X Y Z</p>\n");
      out.write("    </div>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
