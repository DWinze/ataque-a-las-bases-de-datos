<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="bbdd.principal.*"  %>
<%
	
	LucaAlberto la = (LucaAlberto) session.getAttribute("la");
	Programador p = (Programador) session.getAttribute("p");
	
	
	
	String movimiento = request.getParameter("movimiento");
	
	
	Movimiento move=null;
	
	
	for(Movimiento m : p.getMovimientos()){
		
		if(m.getNombre().equals(movimiento)){
			m.setUsos(m.getUsos()-1);
			move = m;
			
		}
		
	}
	
	 
	
	
	
	if(  ( (la.getVida() - move.getDanno() ) ) <= 0   ){
		
		Cookie movilDesbloqueado = new Cookie("movilDesbloqueado", "usarMovil");
		
		
		movilDesbloqueado.setMaxAge(30*24*60*60*20); // 30 días.
		  response.addCookie(movilDesbloqueado);
		 
		  
		  String redirectURL = "victoria.jsp";
		  response.sendRedirect(redirectURL);
		  
	}
	
	if(( (la.getVida() - move.getDanno() ) ) > 0   ){
		
		la.setVida(la.getVida() - move.getDanno());
		session.setAttribute("la", la);
		
		
		
		
	    String redirectURL = "juego.jsp";
	    response.sendRedirect(redirectURL);
		
	}
	
	

%>


