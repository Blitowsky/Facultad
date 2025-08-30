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
import logica.Gerente;
import logica.Persona;
import logica.Vendedor;

/**
 *
 * @author Andrea
 */
public class MetodosVendedor {
    /*BaseDeDatos conect = new BaseDeDatos();
    Connection cc = conect.coneccion();*/
    
    //métodos que usaría la clase gerente
    String baseDatos = "concesionaria.db";
    
    public boolean agregarVendedor(Vendedor vendedor, String usuario,String contrasena, String tipo) throws SQLException{
       //pregunta, no conviene que usuario y contraseña sean atributos de las respectivas clases?
       try {
           try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("INSERT INTO Vendedores (Nombre, Apellido, Dni, AniosExp, Sueldo, CantVentas, Tipo, Usuario, Contrasena) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)")) {
               ps.setString(1,vendedor.getNombre());
               ps.setString(2,vendedor.getApellido());
               ps.setInt(3,vendedor.getDni());
               ps.setInt(4,vendedor.getAniosExperiencia());
               ps.setDouble(5,vendedor.getSueldo());
               ps.setInt(6,vendedor.getCantVentas());
               ps.setString(7,"Vendedor");
               ps.setString(8,usuario);
               ps.setString(9,contrasena);
               ps.executeUpdate();
               //System.out.println("VENDEDOR AGREGADO A LA BASE DE DATOS");
               return true;           
           }
            
         } catch (SQLException ex) {
            Logger.getLogger(Gerente.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }       
    }
    
    public List<String[]> mostrarVendedores( String tabla, String letra) {
        List<String[]> listaVendedores= new ArrayList<>();
        
        String sqlite = "SELECT id, Nombre, Apellido, Dni, AniosExp, Sueldo, CantVentas, Tipo FROM " + tabla + " ORDER BY Nombre ASC";
        Statement st;
        
        try {
            st = ConexionSingleton.getInstance(baseDatos).getConnection().createStatement();
            ResultSet rs = st.executeQuery(sqlite);
            while(rs.next()) {
                String tipo = rs.getString("Tipo");
                if (tipo.equals("Vendedor")){
                    String [] datos = new String[7];
                    datos[0] = String.valueOf(rs.getInt("id"));
                    datos[1] = rs.getString("Nombre");
                    datos[2] = rs.getString("Apellido");
                    datos[3] = String.valueOf(rs.getInt("Dni"));
                    datos[4] = String.valueOf(rs.getInt("AniosExp"));
                    datos[5] = String.valueOf(rs.getDouble("Sueldo"));
                    datos[6] = String.valueOf(rs.getInt("CantVentas"));
                    listaVendedores.add(datos);
                }    
                
            }
            rs.close();
            st.close();            
        } 
        catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return listaVendedores;
    }

    public void eliminarVendedor(int id) throws SQLException {
        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("DELETE FROM Vendedores WHERE id = ?")) {
            ps.setInt(1, id);
            ps.executeUpdate();
        }
    }
    
    public boolean modificarVendedor(Vendedor vendedor) throws SQLException {
        try (PreparedStatement ps =ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("UPDATE Vendedores SET Nombre = ?, Apellido = ?, Dni = ?, Sueldo = ?, Usuario = ?, Contrasena = ? WHERE id = ?")) {
            ps.setString(1, vendedor.getNombre());
            ps.setString(2, vendedor.getApellido());
            ps.setInt(3, vendedor.getDni());
            ps.setDouble(4,vendedor.getSueldo());
            ps.setString(5,vendedor.getUsuario());
            ps.setString(6,vendedor.getContrasena());
            ps.setInt(7, vendedor.getIdVendedor());
            ps.executeUpdate();
            ps.close();
            return true;
        } catch (SQLException e) {
            e.getMessage();
            return false;
        }
    }

    public Vendedor traerVendedor(int idVendedor) {
         try {
            Vendedor vendedor = new Vendedor();
            
             try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("SELECT * FROM Vendedores WHERE id = ?")) {
                 ps.setInt(1, idVendedor);
                 
                 ResultSet rs = ps.executeQuery();
                 if(rs.next()) {
                     
                     vendedor.setNombre(rs.getString("Nombre"));
                     vendedor.setApellido(rs.getString("Apellido"));
                     vendedor.setDni(rs.getInt("Dni"));
                     vendedor.setAniosExperiencia(rs.getInt("AniosExp"));
                     vendedor.setSueldo(rs.getDouble("Sueldo"));
                     vendedor.setCantVentas(rs.getInt("CantVentas"));
                     vendedor.setUsuario(rs.getString("Usuario"));
                     vendedor.setContrasena(rs.getString("Contrasena"));
                     
                     return vendedor;
                 }}
        } catch (SQLException e) {
            return null;
        }
        return null;
    }

    public List<String[]> obtenerVendedoresPorCliente(int idCliente) {
        List<String[]> vendedores = new ArrayList<>();
        String sql = "SELECT Vendedores.id, Vendedores.Nombre, Vendedores.Apellido, Vendedores.Dni, Clientes_Vendedores.tipoRelacion FROM Vendedores INNER JOIN Clientes_Vendedores ON Vendedores.id = Clientes_Vendedores.idVendedor WHERE Clientes_Vendedores.idCliente = ?";

        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(sql)) {
            ps.setInt(1, idCliente);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String[] datos = new String[5];
                    datos[0] = String.valueOf(rs.getInt("id"));
                    datos[1] = rs.getString("Nombre");
                    datos[2] = rs.getString("Apellido");
                    datos[3] = String.valueOf(rs.getInt("Dni"));
                    datos[4] = rs.getString("tipoRelacion");
                    vendedores.add(datos);
                }
            }
            ps.close();
        } catch (SQLException e) {
            System.out.println("Error al obtener los vendedores: " + e.getMessage());
        }
        return vendedores;
    }

    public List<String[]> obtenerClientesPorVendedor(int idVendedor) {
        List<String[]> clientes = new ArrayList<>();
        String sql = "SELECT Clientes.id, Clientes.Nombre, Clientes.Apellido, Clientes.Dni, Clientes_Vendedores.tipoRelacion FROM Clientes JOIN Clientes_Vendedores ON Clientes.id = Clientes_Vendedores.idCliente WHERE Clientes_Vendedores.idVendedor = ?";


        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(sql)) {
            ps.setInt(1, idVendedor);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String[] datos = new String[5];
                    datos[0] = String.valueOf(rs.getInt("id"));
                    datos[1] = rs.getString("Nombre");
                    datos[2] = rs.getString("Apellido");
                    datos[3] = String.valueOf(rs.getInt("Dni"));
                    datos[4] = rs.getString("tipoRelacion");
                    clientes.add(datos);
                }
            }
            ps.close();
        } catch (SQLException e) {
            System.out.println("Error al obtener los clientes: " + e.getMessage());
        }
        return clientes;
    }

    public List<String[]> obtenerVehiculosVendedor(int idVendedor) {
        List<String[]> vehiculos = new ArrayList<>();
        String sql = "SELECT Vehiculos.id, Marca, Modelo, Kms, Condicion, Vehiculos.Tipo FROM Vehiculos INNER JOIN Vendedores ON Vehiculos.idVendedor = Vendedores.id WHERE Vendedores.id = ?";


        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(sql)) {
            ps.setInt(1, idVendedor);
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    String[] datos = new String[6];
                    datos[0] = String.valueOf(rs.getInt("id"));
                    datos[1] = rs.getString("Marca");
                    datos[2] = rs.getString("Modelo");
                    datos[3] = String.valueOf(rs.getInt("Kms"));
                    datos[4] = rs.getString("Condicion");
                    datos[5] = rs.getString("Tipo");
                    vehiculos.add(datos);
                }
            }
            ps.close();
        } catch (SQLException e) {
            System.out.println("Error al obtener los vehiculos: " + e.getMessage());
        }
        return vehiculos;
    }

}