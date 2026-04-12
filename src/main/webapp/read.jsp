<%@page import="J2EE.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>READ Alumno</title>
</head>
<body>
    <% Alumno a = (Alumno) request.getAttribute("al"); %>
    <a href="ServletAlumno?accion=listar" class="flecha-retorno"><i class="fas fa-arrow-left"></i></a>
    <div class="header-verde"><h1>DATOS DEL ALUMNO</h1></div>

    <div style="display: flex; justify-content: center; gap: 20px;">
        <table class="tabla-form">
            <tr><td class="label-lila">MATRICULA</td><td class="input-celda"><%= a.getFn_matricula() %></td></tr>
            <tr><td class="label-lila">NOMBRE</td><td class="input-celda"><%= a.getFv_nombre() %></td></tr>
            <tr><td class="label-lila">APELLIDO PATERNO</td><td class="input-celda"><%= a.getFv_primer_apellido() %></td></tr>
            <tr><td class="label-lila">APELLIDO MATERNO</td><td class="input-celda"><%= a.getFv_segundo_apellido() %></td></tr>
            <tr><td class="label-lila">CARRERA</td><td class="input-celda"><%= a.getFv_carrera() %></td></tr>
            <tr><td class="label-lila">FECHA DE NACIMIENTO</td><td class="input-celda"><%= a.getFd_fecha_nacimiento() %></td></tr>
            <tr><td class="label-lila">CALLE</td><td class="input-celda"><%= a.getFv_calle() %></td></tr>
            <tr><td class="label-lila">NO. EXTERIOR</td><td class="input-celda"><%= a.getFn_numero_exterior() %></td></tr>
            <tr><td class="label-lila">NO. INTERIOR</td><td class="input-celda"><%= a.getFn_numero_interior() %></td></tr>
            <tr><td class="label-lila">COLONIA</td><td class="input-celda"><%= a.getFv_colonia() %></td></tr>
        </table>
        <table class="tabla-form">
            <tr><td class="label-lila">MUNICIPIO</td><td class="input-celda"><%= a.getFv_municipio() %></td></tr>
            <tr><td class="label-lila">ESTADO</td><td class="input-celda"><%= a.getFv_estado() %></td></tr>
            <tr><td class="label-lila">PAIS</td><td class="input-celda"><%= a.getFv_pais() %></td></tr>
            <tr><td class="label-lila">CODIGO POSTAL</td><td class="input-celda"><%= a.getFv_codigo_postal() %></td></tr>
            <tr><td class="label-lila">FECHA DE INSCRIPCIÓN</td><td class="input-celda"><%= a.getFd_fecha_inscripcion() %></td></tr>
            <tr><td class="label-lila">NSS</td><td class="input-celda"><%= a.getFv_nss() %></td></tr>
            <tr><td class="label-lila">CURP</td><td class="input-celda"><%= a.getFv_curp() %></td></tr>
            <tr><td class="label-lila">NO. CELULAR</td><td class="input-celda"><%= a.getFn_celular() %></td></tr>
            <tr><td class="label-lila">ESCUELA</td><td class="input-celda"><%= a.getFv_escuela() %></td></tr>
            <tr><td class="label-lila">CORREO</td><td class="input-celda"><%= a.getFv_correo() %></td></tr>
        </table>
    </div>
</body>
</html>