<%-- 
    Document   : BajaPareja
    Created on : 28-oct-2020, 22:42:13
    Author     : Paulo_PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body background="https://i.pinimg.com/originals/62/d4/60/62d460889f4c79dcba105e9d420f52e5.jpg">
        <c:choose>
            <c:when test="${not empty User}">
                <%@ include file="/MenuAdmin.jsp" %>
                <div class="container">
                    <h1>Baja de la Pareja</h1>
                    <form action="BajaPareja" method="post">
                        <input type="hidden" name="idPareja" value="${modeloPareja.idPareja}" />
                        <div class="form-group">
                            <label>Primer Conyuge: </label>
                            <label class="form-control"> ${modeloPareja.primerConyuge}</label>
                        </div>

                        <div class="form-group">
                            <label>Segundo Conyuge: </label>
                            <label class="form-control"> ${modeloPareja.segundoConyuge}</label>
                        </div>

                        <div class="form-group">
                            <label>Telefono: </label>
                            <label class="form-control">${modeloPareja.telefono}</label>
                        </div>

                        <div class="form-group">
                            <label>Domicilio: </label>
                            <label class="form-control">${modeloPareja.domicilio} </label>
                        </div>

                        <div class="form-group">
                            <label>Ciudad: </label>
                            <label class="form-control"> ${modeloPareja.ciudad}</label>
                        </div>

                        <div class="form-group">
                            <label>Provincia: </label>
                            <label class="form-control"> ${modeloPareja.provincia}</label>
                        </div>
                        <input type="submit" value="Eliminar" class="btn btn-danger" />
                    </form>

                </div>
            </c:when>
            <c:otherwise>
                <%@include file="/InfoError.jsp" %>
            </c:otherwise>
        </c:choose>




    </body>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>
