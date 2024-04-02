<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelo.Persona"%>
<%
    if(session.getAttribute("listaper")==null){
        ArrayList<Persona> lisaux = new ArrayList<Persona>();
        session.setAttribute("listaper", lisaux);
    }
    ArrayList<Persona> lista =(ArrayList<Persona>)session.getAttribute("listaper");
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
        <a href="MainServlet?op=nuevo">Nuevo Registro</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>P1(30)</th>
                <th>P2(30)</th>
                <th>P3(40)</th>
                <th>Nota</th>
                <th></th>
                <th></th>
            </tr>
            <%
                if(lista != null){
                    for(Persona item: lista){
                %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getPrimer()%></td>
                <td><%= item.getSegundo()%></td>
                <td><%= item.getTercero()%></td>
                <td><%= item.getNota()%></td>
                <td>
                    <a href="MainServlet?op=editar&id=<%= item.getId()%>">Editar</a>
                </td>
                <td>
                    <a href="MainServlet?op=eliminar&id=<%= item.getId()%>"
                       onclick="return(confirm('Esta seguro de Eliminar??'))"
                       >Eliminar</a>
                </td>
            </tr>
            <%
                }
                }
                %>
        </table>
</body>
</html>
