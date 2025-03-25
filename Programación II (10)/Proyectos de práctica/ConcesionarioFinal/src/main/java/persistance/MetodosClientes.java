/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistance;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Cliente;
import logica.Vendedor;

/**
 *
 * @author Andrea
 */
public class MetodosClientes {
    
/*    BaseDeDatos conect = new BaseDeDatos();
    Connection cc = conect.coneccion();*/
    
    String baseDatos = "concesionaria.db";
    public boolean subirCliente(Cliente cliente) throws SQLException{
   
        String sql = "INSERT INTO Clientes (Nombre, Apellido, Dni, Empresa, Usuario, Contrasena) VALUES (?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(sql)) {
            ps.setString(1,cliente.getNombre());
            ps.setString(2,cliente.getApellido());
            ps.setInt(3,cliente.getDni());
            ps.setString(4,cliente.getEmpresa());
            ps.setString(5,cliente.getUsuario());
            ps.setString(6,cliente.getContrasena());
            ps.executeUpdate();
            return true;
        } catch (SQLException ex) {
         Logger.getLogger(Vendedor.class.getName()).log(Level.SEVERE, null, ex);
         return false;
        }         
    }
    
    public List<String[]> mostrarClientes( String tabla, String letra) {
        List<String[]> listaClientes= new ArrayList<>();
        
        String sqlite = "SELECT id, Nombre, Apellido, Dni, Empresa FROM " + tabla + " ORDER BY Nombre ASC";
        Statement st;
        
        
        try {
            st = ConexionSingleton.getInstance(baseDatos).getConnection().createStatement();
            ResultSet rs = st.executeQuery(sqlite);
            while(rs.next()) {
                String [] datos = new String[5];
                datos[0] = String.valueOf(rs.getInt("id"));
                datos[1] = rs.getString("Nombre");
                datos[2] = rs.getString("Apellido");
                datos[3] = String.valueOf(rs.getInt("Dni"));
                datos[4] = rs.getString("Empresa");

                listaClientes.add(datos);
                
            }
           
        } 
        catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return listaClientes;
    }
    
    public void eliminarCliente(int id) throws SQLException {
        PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement ("DELETE FROM Clientes WHERE id = ?");
        ps.setInt(1, id);
        ps.executeUpdate();
    }
    
    public boolean modificarCliente(Cliente cliente) throws SQLException {
        try {
            
            try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("UPDATE Clientes SET Nombre = ?, Apellido = ?, Dni = ?, Empresa = ?, Usuario = ?, Contrasena = ? WHERE id = ?")) {
                ps.setString(1, cliente.getNombre());
                ps.setString(2, cliente.getApellido());
                ps.setInt(3, cliente.getDni());
                ps.setString(4,cliente.getEmpresa());
                ps.setString(5,cliente.getUsuario());
                ps.setString(6,cliente.getContrasena());
                ps.setInt(7, cliente.getIdCliente());
                
                ps.executeUpdate();
                return true;
            }
  
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return false;
        }

    }
    
    
    public Cliente traerCliente(int idCliente) {
        try {
            Cliente cliente = new Cliente();
            
            try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("SELECT * FROM Clientes WHERE id = ?")) {
                ps.setInt(1, idCliente);
                
                ResultSet rs = ps.executeQuery();
                if(rs.next()) {
                    
                    cliente.setNombre(rs.getString("Nombre"));
                    cliente.setApellido(rs.getString("Apellido"));
                    cliente.setDni(rs.getInt("Dni"));
                    cliente.setEmpresa(rs.getString("Empresa"));
                    cliente.setUsuario(rs.getString("Usuario"));
                    cliente.setContrasena(rs.getString("Contrasena"));
                    
                    return cliente;
                }
                rs.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return null;
    }        

    public void relacionarVendedorCliente(int idCliente, int idVendedor, String relacion) throws SQLException {
        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("INSERT INTO Clientes_Vendedores (idCliente, idVendedor, tipoRelacion) VALUES (?, ?, ?)")) {
            ps.setInt(1, idCliente);
            ps.setInt(2, idVendedor);
            ps.setString(3, relacion);
            ps.executeUpdate();
            ps.close();
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }
}
