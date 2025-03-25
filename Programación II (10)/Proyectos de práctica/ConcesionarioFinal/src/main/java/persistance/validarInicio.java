/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistance;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.*;


/**
 *
 * @author Augusto
 */
public class validarInicio {
    
    //funcion para validar a los empleados ya que estan en una misma tabla
    String baseDatos = "concesionaria.db";
    public boolean validarEmpleado(String usuario,String contraseña, String tipo) throws SQLException{
        String query = "SELECT * FROM Vendedores WHERE Tipo = ? AND usuario = ? AND contrasena = ?";
        
            try{
                PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(query);
                ps.setString(1,tipo);
                ps.setString(2,usuario);
                ps.setString(3,contraseña);
                ResultSet rs = ps.executeQuery();

                //condicional para devolver true si la consulta es exitosa o false si falla
                if(rs.next()){
                    System.out.println("VALIDACION EXITOSA");
                    return true;
                }else{
                    System.out.println("VALIDACION FALLIDA");
                    return false;
                }
            } catch(SQLException e){
                System.out.println(e.getMessage());
            } finally {

            }
            return false;
    }

    public boolean validarCliente(String usuario,String contraseña) throws SQLException{
        String query = "SELECT * FROM Clientes WHERE usuario = ? AND contrasena = ?";
         
        try{
            //consulta a la base de datos para validar
            PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(query);
            ps.setString(1,usuario);
            ps.setString(2,contraseña);
            ResultSet rs = ps.executeQuery();
            
            //condicional para devolver true si la consulta es exitosa o false si falla
            if(rs.next()){
                System.out.println("VALIDACION EXITOSA");
                return true;
            }else{
                System.out.println("VALIDACION FALLIDA");
                return false;
            }

        } catch(SQLException e){
            e.printStackTrace();
        } finally {
            
        }
        return false;
    }

    public int traerIdVendedor(String usuario) {
        String query = "SELECT id FROM Vendedores WHERE usuario = ?";

        int idVendedor = -1;
        
        try{
            
            PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(query);
            ps.setString(1,usuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                idVendedor = rs.getInt("id"); 
            }
            ps.close();
        } catch(SQLException e){
            e.printStackTrace();
        } finally {

        }
        return idVendedor;
    }

    public int traerIdCliente(String usuario) throws SQLException {
        String query = "SELECT id FROM Clientes WHERE usuario = ?";
        int idCliente = -1;
        
        try{
            
            PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(query);
            ps.setString(1,usuario);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                idCliente = rs.getInt("id"); 
            }
            ps.close();
        } catch(SQLException e){
            System.out.println(e.getMessage());
        } finally {
        }
        
        return idCliente;
    }
    
}