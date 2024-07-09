
package dao;

import conexion.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO {
    
    public boolean validarUsuario(String email, String contrasena) {
        boolean validar = false;

        String sql = "SELECT * FROM login WHERE email = ? AND contrasena = ?";

        try {
            // Obtener conexión
            Connection conexion = ConexionDB.obtenerConexion();
            
            //Preparar la consulta
            PreparedStatement pstmt = conexion.prepareStatement(sql);
            
            //Completar Argumentos
            pstmt.setString(1, email);
            pstmt.setString(2, contrasena);
            
            //Ejecutar consulta
            ResultSet rs = pstmt.executeQuery();
            
            validar = rs.next();
            
            //Cierro procesos
            conexion.close();
            pstmt.close();
            rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return validar;
    }
}
