<%@page import="java.util.List"%>
<%@page import="J2EE.Alumno"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Alumnos</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <style>
        .tabla-principal {width: 70%; margin: auto; border-collapse: collapse; margin-top: 20px; font-size: 25px;}
        .tabla-principal th {background-color: #e1d5f7; padding: 25px; border: 1px solid #ddd;}
        .tabla-principal td {padding: 20px; border: 1px solid #ddd; text-align: center; }
        .icon-btn { color: #333; margin: 0 8px; text-decoration: none; font-size: 1.5rem; cursor: pointer; }
    </style>
</head>
<body>
    <div class="header-verde" style="width: 70%;"> <h1>ALUMNOS DEL J2EE</h1>
    </div>

    <table class="tabla-principal">
        <thead>
            <tr>
                <th>MATRICULA</th>
                <th>NOMBRE COMPLETO</th>
                <th>TELEFONO</th>
                <th>CORREO</th>
                <th>ACCIONES</th>
            </tr>
        </thead>
        <tbody>
            <% 
                List<Alumno> lista = (List<Alumno>) request.getAttribute("listaAlumnos");
                if (lista != null) {
                    for (Alumno al : lista) {
            %>
            <tr>
                <td><%= al.getFn_matricula() %></td>
                <td><%= al.getFv_nombre() %> <%= al.getFv_primer_apellido() %> <%= al.getFv_segundo_apellido() %></td>
                <td><%= al.getFn_celular() %></td>
                <td><%= al.getFv_correo() %></td>
                <td>
                    <a href="#" onclick="confirmarEliminar(<%= al.getFn_matricula() %>)" class="icon-btn">
                        <i class="fas fa-trash-can"></i>
                    </a>
                    <a href="ServletAlumno?accion=editar&id=<%= al.getFn_matricula() %>" class="icon-btn">
                        <i class="fas fa-pen-to-square"></i>
                    </a>
                    <a href="ServletAlumno?accion=ver&id=<%= al.getFn_matricula() %>" class="icon-btn">
                        <i class="fas fa-eye"></i>
                    </a>
                </td>
            </tr>
            <% 
                    }
                } 
            %>
        </tbody>
    </table>

    <div style="text-align: center; margin-top: 30px;">
        <a href="create.jsp" class="btn-submit" style="display: inline-block;">REGISTRAR</a>
    </div>

    <script>
        function confirmarEliminar(id) {
            if (confirm("¿SEGURO DE ELIMINAR ESTE REGISTRO?")) {
                window.location.href = "ServletAlumno?accion=eliminar&id=" + id;
            }
        }
    </script>
</body>
</html>