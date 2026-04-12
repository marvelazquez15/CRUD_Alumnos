<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Nuevo Alumno</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/estilos.css">
</head>
<body>
    <a href="ServletAlumno?accion=listar" class="flecha-retorno"><i class="fas fa-arrow-left"></i></a>
    <div class="header-verde"><h1>NUEVO REGISTRO</h1></div>

    <% if(request.getAttribute("error") != null) { %>
        <div style="background-color: #f8d7da; color: #721c24; padding: 15px; margin: 10px auto; width: 60%; border: 1px solid #f5c6cb; border-radius: 5px; text-align: center; font-size: 18px; font-weight: bold;">
            <%= request.getAttribute("error") %>
        </div>
    <% } %>

    <form action="ServletAlumno" method="post">
        <input type="hidden" name="operacion" value="guardar">
        <div style="display: flex; justify-content: center; gap: 20px;">
            <table class="tabla-form">
                <tr><td class="label-lila">MATRICULA</td><td class="input-celda"><input type="number" name="txtMatricula" value="${param.txtMatricula}" required></td></tr>
                <tr><td class="label-lila">NOMBRE</td><td class="input-celda"><input type="text" name="txtNombre" value="${param.txtNombre}" required></td></tr>
                <tr><td class="label-lila">APELLIDO PATERNO</td><td class="input-celda"><input type="text" name="txtApellidoP" value="${param.txtApellidoP}" required></td></tr>
                <tr><td class="label-lila">APELLIDO MATERNO</td><td class="input-celda"><input type="text" name="txtApellidoM" value="${param.txtApellidoM}"></td></tr>
                <tr><td class="label-lila">CARRERA</td><td class="input-celda"><input type="text" name="txtCarrera" value="${param.txtCarrera}"></td></tr>
                <tr><td class="label-lila">FECHA DE NACIMIENTO</td><td class="input-celda"><input type="date" name="txtFechaNac" value="${param.txtFechaNac}"></td></tr>
                <tr><td class="label-lila">CALLE</td><td class="input-celda"><input type="text" name="txtCalle" value="${param.txtCalle}"></td></tr>
                <tr><td class="label-lila">NO. EXTERIOR</td><td class="input-celda"><input type="number" name="txtNoExt" value="${param.txtNoExt}"></td></tr>
                <tr><td class="label-lila">NO. INTERIOR</td><td class="input-celda"><input type="number" name="txtNoInt" value="${param.txtNoInt}"></td></tr>
                <tr><td class="label-lila">COLONIA</td><td class="input-celda"><input type="text" name="txtColonia" value="${param.txtColonia}"></td></tr>
            </table>
            <table class="tabla-form">
                <tr><td class="label-lila">MUNICIPIO</td><td class="input-celda"><input type="text" name="txtMunicipio" value="${param.txtMunicipio}"></td></tr>
                <tr><td class="label-lila">ESTADO</td><td class="input-celda"><input type="text" name="txtEstado" value="${param.txtEstado}"></td></tr>
                <tr><td class="label-lila">PAIS</td><td class="input-celda"><input type="text" name="txtPais" value="${param.txtPais}"></td></tr>
                <tr><td class="label-lila">CODIGO POSTAL</td><td class="input-celda"><input type="text" name="txtCP" value="${param.txtCP}"></td></tr>
                <tr><td class="label-lila">FECHA DE INSCRIPCIÓN</td><td class="input-celda"><input type="date" name="txtFechaIns" value="${param.txtFechaIns}"></td></tr>
                <tr><td class="label-lila">NSS</td><td class="input-celda"><input type="text" name="txtNSS" value="${param.txtNSS}"></td></tr>
                <tr><td class="label-lila">CURP</td><td class="input-celda"><input type="text" name="txtCURP" value="${param.txtCURP}"></td></tr>
                <tr><td class="label-lila">NO. CELULAR</td><td class="input-celda"><input type="tel" name="txtCelular" value="${param.txtCelular}"></td></tr>
                <tr><td class="label-lila">ESCUELA</td><td class="input-celda"><input type="text" name="txtEscuela" value="${param.txtEscuela}"></td></tr>
                <tr><td class="label-lila">CORREO</td><td class="input-celda"><input type="email" name="txtCorreo" value="${param.txtCorreo}"></td></tr>
            </table>
        </div>
        <button type="submit" class="btn-submit">REGISTRAR ALUMNO</button>
    </form>
</body>
</html>