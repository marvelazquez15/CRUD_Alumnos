package J2EE;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ServletAlumno
 */
@WebServlet("/ServletAlumno")
public class ServletAlumno extends HttpServlet {
	AlumnoCRUD crud = new AlumnoCRUD();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletAlumno() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String accion = request.getParameter("accion");
	    if (accion == null) accion = "listar";
	    
	    int id;
	    switch (accion) {
	        case "listar":
	            request.setAttribute("listaAlumnos", crud.listar());
	            request.getRequestDispatcher("index.jsp").forward(request, response);
	            break;
	        case "ver":
	            id = Integer.parseInt(request.getParameter("id"));
	            request.setAttribute("al", crud.buscar(id));
	            request.getRequestDispatcher("read.jsp").forward(request, response);
	            break;
	        case "editar":
	            id = Integer.parseInt(request.getParameter("id"));
	            request.setAttribute("al", crud.buscar(id));
	            request.getRequestDispatcher("update.jsp").forward(request, response);
	            break;
	        case "eliminar":
	            id = Integer.parseInt(request.getParameter("id"));
	            crud.eliminar(id);
	            response.sendRedirect("ServletAlumno?accion=listar");
	            break;
	    }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    Alumno a = new Alumno();
	    String operacion = request.getParameter("operacion"); // Sacamos la operación aquí para usarla en el catch

	    try {
	        //capturar datos
	        a.setFn_matricula(Integer.parseInt(request.getParameter("txtMatricula")));
	        a.setFv_nombre(request.getParameter("txtNombre"));
	        a.setFv_primer_apellido(request.getParameter("txtApellidoP"));
	        a.setFv_segundo_apellido(request.getParameter("txtApellidoM"));
	        a.setFv_carrera(request.getParameter("txtCarrera"));
	        a.setFd_fecha_nacimiento(java.sql.Date.valueOf(request.getParameter("txtFechaNac")));
	        a.setFv_calle(request.getParameter("txtCalle"));
	        a.setFn_numero_exterior(Integer.parseInt(request.getParameter("txtNoExt")));
	        
	        String noInt = request.getParameter("txtNoInt");
	        a.setFn_numero_interior(noInt != null && !noInt.isEmpty() ? Integer.parseInt(noInt) : 0);
	        a.setFv_colonia(request.getParameter("txtColonia"));
	        a.setFv_municipio(request.getParameter("txtMunicipio"));
	        a.setFv_estado(request.getParameter("txtEstado"));
	        a.setFv_pais(request.getParameter("txtPais"));
	        a.setFv_codigo_postal(request.getParameter("txtCP"));
	        a.setFd_fecha_inscripcion(java.sql.Date.valueOf(request.getParameter("txtFechaIns")));
	        a.setFv_nss(request.getParameter("txtNSS"));
	        a.setFv_curp(request.getParameter("txtCURP"));
	        a.setFn_celular(Long.parseLong(request.getParameter("txtCelular"))); 
	        a.setFv_escuela(request.getParameter("txtEscuela"));
	        a.setFv_correo(request.getParameter("txtCorreo"));

	        //ejecucion BD
	        if ("guardar".equals(operacion)) {
	            crud.insertar(a);
	        } else {
	            crud.actualizar(a);
	        }

	        //si se conecta
	        response.sendRedirect("ServletAlumno?accion=listar");

	    } catch (Exception e) {
	        //error de datos duplic
	        System.out.println("Error detectado: " + e.getMessage());
	        
	        String mensaje = "Error: La Matrícula, NSS, CURP, Celular o Correo ya están registrados.";
	        request.setAttribute("error", mensaje);
	        
	        //regresamos al formulario correspondiente
	        if ("guardar".equals(operacion)) {
	            request.getRequestDispatcher("create.jsp").forward(request, response);
	        } else {
	            request.setAttribute("al", a); 
	            request.getRequestDispatcher("update.jsp").forward(request, response);
	        }
	    }
	}
}
