<%-- 
    Document   : Login
    Created on : 08-nov-2020, 11:13:00
    Author     : Paulo_PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body background="https://www.flexxus.com.ar/wp-content/uploads/2016/03/software-de-gestion-erp-para-comercios-articulos-del-hogar.jpg">
       <%@ include file="/Inicio.jsp" %>
        <h1>Iniciar Sesión</h1>
        <% if(request.getAttribute("mensajeError") != null && !request.getAttribute("mensajeError").equals(""))
        { %>
            <div class="alert alert-danger" role="alert">
                    <h2>${mensajeError}</h2>
            </div>
        <% } %>
        <div class="container">
             <form method="post" action="Login">
                <div class="form-group">
                    <label>Usuario: </label>
                    <input name="txtUsuario" class="form-control"/>
                </div>
                 <div class="form-group">
                    <label>Contraseña: </label>
                    <input type="password" name="txtPass" class="form-control"/>
                </div>
                 <input type="submit" value="Iniciar Sesión" class="btn btn-primary" >
            </form>
        </div>
       
        
        
        
        
        
         <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
        
    </body>
</html>
