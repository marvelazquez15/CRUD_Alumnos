package J2EE;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
	//datos para el conector
    private String driver = "org.postgresql.Driver";
    private String url = "jdbc:postgresql://localhost:5432/J2EE"; 
    private String usuario = "postgres";
    private String clave = "1515"; 
    //establecer CONEXION con el servidor
    public Connection conectar() {
        Connection con = null;  
        try {
            Class.forName(driver); //carga el driver 
            con = DriverManager.getConnection(url, usuario, clave); //conexión
            System.out.println("Conexión exitosa a la base de datos J2EE");
        } catch (ClassNotFoundException | SQLException e) {
            System.out.println("Error al conectar: " + e.getMessage());
        }
        return con;
    }
}
