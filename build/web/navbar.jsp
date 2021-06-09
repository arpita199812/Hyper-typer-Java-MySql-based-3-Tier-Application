<%-- 
    Document   : navbar
    Created on : Oct 28, 2019, 10:15:15 PM
    Author     : Sankalp
--%>

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
                <blink>
                <center>
                <ul class="navbar-nav ml-auto" style="margin-right: -500px;">                             
                    <h3><a href="scoreboard.jsp" class="nav-link js-scroll-trigger" style="color: whitesmoke; font-family: cursive;">Leaderboard</a></h3>
                </ul>
                </center>
                </blink>
                <ul class="navbar-nav text-uppercase ml-auto">                             
                    <a href="user.jsp" class="nav-link js-scroll-trigger" style="color: whitesmoke; font-family: cursive;">
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
                session.setAttribute("unm",null);
                session.setAttribute("pas",null);
                session.setAttribute("hs",null);    
                session.setAttribute("hs2",null);
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