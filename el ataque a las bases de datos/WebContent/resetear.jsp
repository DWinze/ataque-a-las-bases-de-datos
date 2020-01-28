<%



if  ( request.getParameter("victoriaR").equals("resetear") ){
		
		session.invalidate();
		String redirectURL = "registro.html";
	    response.sendRedirect(redirectURL);
	
}
else{
	session.invalidate();
}



%>