<%@page import="com.emergentes.modelo.Persona"%>
<%
    Persona reg =(Persona) request.getAttribute("miobjper");
    
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        .container {
            width: 400px; 
            margin: 0 auto; 
            border: 1px solid #ccc; 
            padding: 15px; 
        }
        .container label {
            display: block; 
            text-align: center; 
        }
        .container2{
            width: 400px; 
            margin: 0 auto; 
            border: 0px solid #ccc; 
            padding: 20px; 
        }
            .container2 label2 {
            display: block; 
            text-align: center;
            }
            .container3{
            width: 50px; 
            margin: 0 auto; 
            border: 0px solid #ccc; 
            padding: 20px; 
        }
    </style>
    </head>
    <body>
    <div class="container">
        <form action="EXAMEN" method="post">
            <label for="parcial">Primer Parcial TEM-742</label>
            <br>
            <label for="n">Nombre:Dylan Reynaldo Nina Chambi</label>
            <br>
            <label for="carnet">Carnet: 13548146</label>
            <br>
        </form>
    </div>
        
        <div class="container2">
            <h2><label2 for="Registro">  REGISTRO DE CALIFICACIONES</label2></h2>
        </div>
        
        
     <div class="container">
        <form action="MainServlet" method="post">
            <table>
                <tr>
                    <td>ID</td>
                    <td><input type="text" name="id" value="<%= reg.getId()%>" size="2" readonly></td>
                </tr>
                <tr>
                    <td>Nombre del Estudiante</td>
                    <td><input type="text" name="nombre" value="<%= reg.getNombre()%>"></td>
                </tr>
                <tr>
                    <td>Primer Parcial(sobre 30pts)</td>
                    <td><input type="text" name="primer" value="<%= reg.getPrimer()%>"></td>
                </tr>
                <tr>
                    <td>Segundo Parcial(sobre 30pts)</td>
                    <td><input type="text" name="segundo" value="<%= reg.getSegundo()%>"></td>
                </tr>
                <tr>
                    <td>Tercer Parcial(sobre 40pts)</td>
                    <td><input type="text" name="tercer" value="<%= reg.getTercero()%>"></td>
                </tr><tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"></td>
                </tr>
            </table>
           
        </form>
         
    </div> 
</body>
</html>
