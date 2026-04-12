package J2EE;
import java.sql.Date;

public class Alumno {
	//campos (atributos) de la BD
	private int fn_matricula;
    private String fv_nombre;
    private String fv_primer_apellido;
    private String fv_segundo_apellido;
    private String fv_carrera;
    private Date fd_fecha_nacimiento;
    private String fv_calle;
    private int fn_numero_exterior;
    private int fn_numero_interior;
    private String fv_colonia;
    private String fv_municipio;
    private String fv_estado;
    private String fv_pais;
    private String fv_codigo_postal;
    private Date fd_fecha_inscripcion;
    private String fv_nss;
    private String fv_curp;
    private long fn_celular;
    private String fv_escuela;
    private String fv_correo;
    
    public Alumno() {
    } //contructor para instancias objetos

    //metodos get y set para los atributos
	public int getFn_matricula() {
		return fn_matricula;
	}

	public void setFn_matricula(int fn_matricula) {
		this.fn_matricula = fn_matricula;
	}

	public String getFv_nombre() {
		return fv_nombre;
	}

	public void setFv_nombre(String fv_nombre) {
		this.fv_nombre = fv_nombre;
	}

	public String getFv_primer_apellido() {
		return fv_primer_apellido;
	}

	public void setFv_primer_apellido(String fv_primer_apellido) {
		this.fv_primer_apellido = fv_primer_apellido;
	}

	public String getFv_segundo_apellido() {
		return fv_segundo_apellido;
	}

	public void setFv_segundo_apellido(String fv_segundo_apellido) {
		this.fv_segundo_apellido = fv_segundo_apellido;
	}

	public String getFv_carrera() {
		return fv_carrera;
	}

	public void setFv_carrera(String fv_carrera) {
		this.fv_carrera = fv_carrera;
	}

	public Date getFd_fecha_nacimiento() {
		return fd_fecha_nacimiento;
	}

	public void setFd_fecha_nacimiento(Date fd_fecha_nacimiento) {
		this.fd_fecha_nacimiento = fd_fecha_nacimiento;
	}

	public String getFv_calle() {
		return fv_calle;
	}

	public void setFv_calle(String fv_calle) {
		this.fv_calle = fv_calle;
	}

	public int getFn_numero_exterior() {
		return fn_numero_exterior;
	}

	public void setFn_numero_exterior(int fn_numero_exterior) {
		this.fn_numero_exterior = fn_numero_exterior;
	}

	public int getFn_numero_interior() {
		return fn_numero_interior;
	}

	public void setFn_numero_interior(int fn_numero_interior) {
		this.fn_numero_interior = fn_numero_interior;
	}

	public String getFv_colonia() {
		return fv_colonia;
	}

	public void setFv_colonia(String fv_colonia) {
		this.fv_colonia = fv_colonia;
	}

	public String getFv_municipio() {
		return fv_municipio;
	}

	public void setFv_municipio(String fv_municipio) {
		this.fv_municipio = fv_municipio;
	}

	public String getFv_estado() {
		return fv_estado;
	}

	public void setFv_estado(String fv_estado) {
		this.fv_estado = fv_estado;
	}

	public String getFv_pais() {
		return fv_pais;
	}

	public void setFv_pais(String fv_pais) {
		this.fv_pais = fv_pais;
	}

	public String getFv_codigo_postal() {
		return fv_codigo_postal;
	}

	public void setFv_codigo_postal(String fv_codigo_postal) {
		this.fv_codigo_postal = fv_codigo_postal;
	}

	public Date getFd_fecha_inscripcion() {
		return fd_fecha_inscripcion;
	}

	public void setFd_fecha_inscripcion(Date fd_fecha_inscripcion) {
		this.fd_fecha_inscripcion = fd_fecha_inscripcion;
	}

	public String getFv_nss() {
		return fv_nss;
	}

	public void setFv_nss(String fv_nss) {
		this.fv_nss = fv_nss;
	}

	public String getFv_curp() {
		return fv_curp;
	}

	public void setFv_curp(String fv_curp) {
		this.fv_curp = fv_curp;
	}

	public long getFn_celular() {
		return fn_celular;
	}

	public void setFn_celular(long fn_celular) {
		this.fn_celular = fn_celular;
	}

	public String getFv_escuela() {
		return fv_escuela;
	}

	public void setFv_escuela(String fv_escuela) {
		this.fv_escuela = fv_escuela;
	}

	public String getFv_correo() {
		return fv_correo;
	}

	public void setFv_correo(String fv_correo) {
		this.fv_correo = fv_correo;
	}
    
    
}
