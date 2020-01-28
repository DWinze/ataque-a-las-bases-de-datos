<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
     
<%@ page import="bbdd.principal.*"  %>

<%

String username = request.getParameter("username");
LucaAlberto la;
Programador p;


if(session.isNew()){
	
	session.setAttribute("username", username);
	 la = new LucaAlberto();
	 p = new Programador();	
	
	 	
	session.setAttribute("la", la);
	
	session.setAttribute("p", p);
		
}

else{
	 la=(LucaAlberto)session.getAttribute("la");
	 p=(Programador)session.getAttribute("p");
	
	
}


%>





<!DOCTYPE html>
<html lang="es">

<head>
   <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <title>Ataque a las bases de datos</title>
</head>

<body>



    <h1>
        Ataque a las bases de datos
    </h1>


    <div class="row">
        <div class="col-sm-6">
            
     <div class="row">
       
       
        <div class="col-sm-4">
            
            	<h3>
                <% out.print(session.getAttribute("username")); %>
                </h3>
                      
                        <%
                            if(p.getVida()<=25){
                                %>
                                      <div class="progress">
                            <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" 
                            style="width:<%= p.getVida()%>%">
                    <%=p.getVida() %>%
                    </div>
                            <%
                            }

                        %>
                        <%
                       
                           if( p.getVida() <= 50 && p.getVida()>25 ){
                                %>
                                      <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" 
                            style="width:<%= p.getVida()%>%">
                    <%=p.getVida() %>%
                    </div>
                            <%
                            }

                        %>
                        
                        <%
                       
                           if( p.getVida() > 50){
                                %>
                                <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" 
                            style="width:<%= p.getVida()%>%">
                    <%=p.getVida() %>%
                    </div>
                       <%
                            }

                        %>  
            	
           </div> 	
            </div> 
            	<br>
              <img src="img/programador.png">
            	  
            	  
            	  
            	  
                <form action="server.jsp" method="POST">

                    <label>
                                        Atacar
                                 
                                    </label>

                   



                    <select name="movimiento">
                                        <option value="<%= p.getMovimientos().get(0).getNombre() %>">
                                            <%= p.getMovimientos().get(0) %>
                                        </option>
                                        <option value="<%= p.getMovimientos().get(1).getNombre() %>">
                                         <%=   p.getMovimientos().get(1) %>
                                            </option>
                                            <option value="<%= p.getMovimientos().get(2).getNombre() %>">
                                               <%=   p.getMovimientos().get(2) %>
                                            </option>
                                            <option value="<%= p.getMovimientos().get(3).getNombre() %>">
                                             <%=  p.getMovimientos().get(3)%>
                                            </option>
                            			<% 
                            			
                            			 Cookie[] cookies = request.getCookies();
                            		      if (cookies != null) {
                            		        for (int i =0; i < cookies.length; i++) {
                            		          if (cookies[i].getName().equals("movilDesbloqueado")) {
                            		           	
                            		        	 %> <option value="<%= p.getMovimientos().get(4).getNombre() %>" style="color:yellow; background-color:black">
                            		        	   	<%= p.getMovimientos().get(4)%>
                            		        	 
	 
                            		        	  </option>
                            		        	   <%
                            		          }                        
                            		        }
                            		      }
                            			
                            			
                            			%>
                                    </select>
                    <br>
                    <input type="submit" value="usar" class="btn btn-danger">


                </form>
            </div> 
            </div> 
      
      
      
      
        <div class="col-sm-6">
            <div class="col-sm-4">
            
            
                <h3>
                    Luca Alberto
                </h3>
				
				   <%
                            if(la.getVida()<=125){
                                %>
                                      <div class="progress">
                            <div class="progress-bar progress-bar-danger progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" 
                            style="width:<%= la.getVida()*100/500%>%">
                    <%=la.getVida()*100/500 %>%
                    </div>
                            <%
                            }

                        %>
                        <%
                       
                           if( la.getVida() <= 250 && la.getVida()>125 ){
                                %>
                                      <div class="progress">
                            <div class="progress-bar progress-bar-warning progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" 
                            style="width:<%= la.getVida()*100/500 %>%">
                    <%=la.getVida()*100/500 %>%
                    </div>
                            <%
                            }

                        %>
                        
                        <%
                       
                           if( la.getVida() > 250){
                                %>
                                <div class="progress">
                            <div class="progress-bar progress-bar-success progress-bar-striped active" role="progressbar" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100" 
                            style="width:<%= la.getVida()*100/500 %>%">
                    <%=la.getVida()*100/500 %>%
                    </div>
                       <%
                            }

                        %>  
            	
           </div> 	
            </div> 
            	<br>
                <img src="img/la.png">
            </div>

        </div>
    </div>
    
    </body>
    </html>
    
    

