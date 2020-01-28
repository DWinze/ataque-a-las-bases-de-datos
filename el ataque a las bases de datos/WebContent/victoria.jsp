<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    
<%@ page import="bbdd.principal.*"  %>



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

    <style>
body  {
  background-image: url("http://lh3.googleusercontent.com/-dveOiKGNCYk/VWE9zIQoBpI/AAAAAAABkx4/zqWDOGLOdbo/s72-c/floaties-confeti-gifanimados-09%25255B5%25255D.gif?imgmax=800");
 
}
h1{
    background-color:white;
}
</style>
</head>

<body>
        <h1>
            ENHORABUENA HAS APROBADO LA ASIGNATURA: BASES DE DATOS
            
            HAS DESBLOQUEADO UN NUEVO MOVIMIENTO
        </h1>



        <form action="resetear.jsp" method="GET">
        	
        	<input type="submit" value="resetear" name="victoriaR">
        </form>
               

  </body>
    </html>