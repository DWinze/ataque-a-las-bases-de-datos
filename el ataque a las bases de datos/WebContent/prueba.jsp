<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="bbdd.principal.*"  %>


<%

%>

<% 
	

	LucaAlberto la = new LucaAlberto();
	Programador p = new Programador();
	
	
	%>


<!DOCTYPE html>
<html>
<head>
	
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Hola mundo</h1>
	
	<p> 
		<% out.print(la.getVida()); %>
		</p>
</body>
</html>