<%@page import="J2EE.Alumno"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
    <title>Actualizar Alumno</title>
</head>
<body>
    <%--el objeto alumno que envía el Servlet --%>
    <% Alumno a = (Alumno) request.getAttribute("al"); %>
    
    <a href="ServletAlumno?accion=listar" class="flecha-retorno"><i class="fas fa-arrow-left"></i></a>
    <div class="header-verde"><h1>MODIFICAR REGISTRO</h1></div>

    <% if(request.getAttribute("error") != null) { %>
        <div style="background-color: #f8d7da; color: #721c24; padding: 15px; margin: 10px auto; width: 60%; border: 1px solid #f5c6cb; border-radius: 5px; text-align: center; font-size: 18px; font-weight: bold;">
            <%= request.getAttribute("error") %>
        </div>
    <% } %>

    <form action="ServletAlumno" method="post">
        <input type="hidden" name="operacion" value="actualizar">
        
        <div style="display: flex; justify-content: center; gap: 20px;">
            <table class="tabla-form">
                <tr><td class="label-lila">MATRICULA</td><td class="input-celda"><input type="number" name="txtMatricula" value="<%= a.getFn_matricula() %>" readonly></td></tr>
                <tr><td class="label-lila">NOMBRE</td><td class="input-celda"><input type="text" name="txtNombre" value="<%= a.getFv_nombre() %>"></td></tr>
                <tr><td class="label-lila">APELLIDO PATERNO</td><td class="input-celda"><input type="text" name="txtApellidoP" value="<%= a.getFv_primer_apellido() %>"></td></tr>
                <tr><td class="label-lila">APELLIDO MATERNO</td><td class="input-celda"><input type="text" name="txtApellidoM" value="<%= a.getFv_segundo_apellido() %>"></td></tr>
                <tr><td class="label-lila">CARRERA</td><td class="input-celda"><input type="text" name="txtCarrera" value="<%= a.getFv_carrera() %>"></td></tr>
                <tr><td class="label-lila">FECHA DE NACIMIENTO</td><td class="input-celda"><input type="date" name="txtFechaNac" value="<%= a.getFd_fecha_nacimiento() %>"></td></tr>
                <tr><td class="label-lila">CALLE</td><td class="input-celda"><input type="text" name="txtCalle" value="<%= a.getFv_calle() %>"></td></tr>
                <tr><td class="label-lila">NO. EXTERIOR</td><td class="input-celda"><input type="number" name="txtNoExt" value="<%= a.getFn_numero_exterior() %>"></td></tr>
                <tr><td class="label-lila">NO. INTERIOR</td><td class="input-celda"><input type="number" name="txtNoInt" value="<%= a.getFn_numero_interior() %>"></td></tr>
                <tr><td class="label-lila">COLONIA</td><td class="input-celda"><input type="text" name="txtColonia" value="<%= a.getFv_colonia() %>"></td></tr>
            </table>
            
            <table class="tabla-form">
                <tr><td class="label-lila">MUNICIPIO</td><td class="input-celda"><input type="text" name="txtMunicipio" value="<%= a.getFv_municipio() %>"></td></tr>
                <tr><td class="label-lila">ESTADO</td><td class="input-celda"><input type="text" name="txtEstado" value="<%= a.getFv_estado() %>"></td></tr>
                <tr><td class="label-lila">PAIS</td><td class="input-celda"><input type="text" name="txtPais" value="<%= a.getFv_pais() %>"></td></tr>
                <tr><td class="label-lila">CODIGO POSTAL</td><td class="input-celda"><input type="text" name="txtCP" value="<%= a.getFv_codigo_postal() %>"></td></tr>
                <tr><td class="label-lila">FECHA DE INSCRIPCIÓN</td><td class="input-celda"><input type="date" name="txtFechaIns" value="<%= a.getFd_fecha_inscripcion() %>"></td></tr>
                <tr><td class="label-lila">NSS</td><td class="input-celda"><input type="text" name="txtNSS" value="<%= a.getFv_nss() %>"></td></tr>
                <tr><td class="label-lila">CURP</td><td class="input-celda"><input type="text" name="txtCURP" value="<%= a.getFv_curp() %>"></td></tr>
                <tr><td class="label-lila">NO. CELULAR</td><td class="input-celda"><input type="tel" name="txtCelular" value="<%= a.getFn_celular() %>"></td></tr>
                <tr><td class="label-lila">ESCUELA</td><td class="input-celda"><input type="text" name="txtEscuela" value="<%= a.getFv_escuela() %>"></td></tr>
                <tr><td class="label-lila">CORREO</td><td class="input-celda"><input type="email" name="txtCorreo" value="<%= a.getFv_correo() %>"></td></tr>
            </table>
        </div>
        
        <button type="submit" class="btn-submit">GUARDAR CAMBIOS</button>
    </form>
</body>
</html>