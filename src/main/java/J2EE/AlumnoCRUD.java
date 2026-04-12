package J2EE;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class AlumnoCRUD {
	private Conexion conexion = new Conexion();
	
    //lista resumida para vista
    public List<Alumno> listar() {
        List<Alumno> lista = new ArrayList<>();
        String sql = "SELECT * FROM public.to001_alumno ORDER BY fn_matricula ASC";
        try (Connection con = conexion.conectar(); 
             PreparedStatement ps = con.prepareStatement(sql); 
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                lista.add(mapearFull(rs));
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return lista;
    }

    //READ
    public Alumno buscar(int matricula) {
        String sql = "SELECT * FROM public.to001_alumno WHERE fn_matricula = ?";
        try (Connection con = conexion.conectar(); 
             PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, matricula);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) return mapearFull(rs);
            }
        } catch (SQLException e) { e.printStackTrace(); }
        return null;
    }

    //CREATE
    public void insertar(Alumno a) {
        String sql = "INSERT INTO public.to001_alumno VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        ejecutarPS(sql, a, true);
    }

    //UPDATE
    public void actualizar(Alumno a) {
        String sql = "UPDATE public.to001_alumno SET fv_nombre=?, fv_primer_apellido=?, fv_segundo_apellido=?, fv_carrera=?, fd_fecha_nacimiento=?, fv_calle=?, fn_numero_exterior=?, fn_numero_interior=?, fv_colonia=?, fv_municipio=?, fv_estado=?, fv_pais=?, fv_codigo_postal=?, fd_fecha_inscripcion=?, fv_nss=?, fv_curp=?, fn_celular=?, fv_escuela=?, fv_correo=? WHERE fn_matricula=?";
        ejecutarPS(sql, a, false);
    }

    //DELETE
    public void eliminar(int matricula) {
        String sql = "DELETE FROM public.to001_alumno WHERE fn_matricula = ?";
        try (Connection con = conexion.conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            ps.setInt(1, matricula);
            ps.executeUpdate();
        } catch (SQLException e) { e.printStackTrace(); }
    }

    private Alumno mapearFull(ResultSet rs) throws SQLException {
        Alumno a = new Alumno();
        a.setFn_matricula(rs.getInt("fn_matricula"));
        a.setFv_nombre(rs.getString("fv_nombre"));
        a.setFv_primer_apellido(rs.getString("fv_primer_apellido"));
        a.setFv_segundo_apellido(rs.getString("fv_segundo_apellido"));
        a.setFv_carrera(rs.getString("fv_carrera"));
        a.setFd_fecha_nacimiento(rs.getDate("fd_fecha_nacimiento"));
        a.setFv_calle(rs.getString("fv_calle"));
        a.setFn_numero_exterior(rs.getInt("fn_numero_exterior"));
        a.setFn_numero_interior(rs.getInt("fn_numero_interior"));
        a.setFv_colonia(rs.getString("fv_colonia"));
        a.setFv_municipio(rs.getString("fv_municipio"));
        a.setFv_estado(rs.getString("fv_estado"));
        a.setFv_pais(rs.getString("fv_pais"));
        a.setFv_codigo_postal(rs.getString("fv_codigo_postal"));
        a.setFd_fecha_inscripcion(rs.getDate("fd_fecha_inscripcion"));
        a.setFv_nss(rs.getString("fv_nss"));
        a.setFv_curp(rs.getString("fv_curp"));
        a.setFn_celular(rs.getLong("fn_celular"));
        a.setFv_escuela(rs.getString("fv_escuela"));
        a.setFv_correo(rs.getString("fv_correo"));
        return a;
    }

    private void ejecutarPS(String sql, Alumno a, boolean esInsert) {
        try (Connection con = conexion.conectar(); PreparedStatement ps = con.prepareStatement(sql)) {
            if (esInsert) {
                ps.setInt(1, a.getFn_matricula());
                ps.setString(2, a.getFv_nombre());
                ps.setString(3, a.getFv_primer_apellido());
                ps.setString(4, a.getFv_segundo_apellido());
                ps.setString(5, a.getFv_carrera());
                ps.setDate(6, new java.sql.Date(a.getFd_fecha_nacimiento().getTime()));
                ps.setString(7, a.getFv_calle());
                ps.setInt(8, a.getFn_numero_exterior());
                ps.setInt(9, a.getFn_numero_interior());
                ps.setString(10, a.getFv_colonia());
                ps.setString(11, a.getFv_municipio());
                ps.setString(12, a.getFv_estado());
                ps.setString(13, a.getFv_pais());
                ps.setString(14, a.getFv_codigo_postal());
                ps.setDate(15, new java.sql.Date(a.getFd_fecha_inscripcion().getTime()));
                ps.setString(16, a.getFv_nss());
                ps.setString(17, a.getFv_curp());
                ps.setLong(18, a.getFn_celular());
                ps.setString(19, a.getFv_escuela());
                ps.setString(20, a.getFv_correo());
            } else {
                ps.setString(1, a.getFv_nombre());
                ps.setString(2, a.getFv_primer_apellido());
                ps.setString(3, a.getFv_segundo_apellido());
                ps.setString(4, a.getFv_carrera());
                ps.setDate(5, new java.sql.Date(a.getFd_fecha_nacimiento().getTime()));
                ps.setString(6, a.getFv_calle());
                ps.setInt(7, a.getFn_numero_exterior());
                ps.setInt(8, a.getFn_numero_interior());
                ps.setString(9, a.getFv_colonia());
                ps.setString(10, a.getFv_municipio());
                ps.setString(11, a.getFv_estado());
                ps.setString(12, a.getFv_pais());
                ps.setString(13, a.getFv_codigo_postal());
                ps.setDate(14, new java.sql.Date(a.getFd_fecha_inscripcion().getTime()));
                ps.setString(15, a.getFv_nss());
                ps.setString(16, a.getFv_curp());
                ps.setLong(17, a.getFn_celular());
                ps.setString(18, a.getFv_escuela());
                ps.setString(19, a.getFv_correo());
                ps.setInt(20, a.getFn_matricula()); // WHERE
            }
            ps.executeUpdate();
        } catch (SQLException e) { e.printStackTrace(); }
    }
}
