/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistance;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Auto;
import logica.Camioneta;
import logica.Moto;
import logica.Vendedor;
import logica.Vehiculo;
/**
 *
 * @author guada
 */
public class MetodosVehiculo {
    /*BaseDeDatos conect = new BaseDeDatos();
    Connection cc = conect.coneccion();*/
    String baseDatos = "concesionaria.db";
    public void subirVehiculo(Vehiculo vehiculo, int idVendedor1) {
        try {
            try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("INSERT INTO Vehiculos (Modelo, Marca, Color, Kms, Condicion, Tipo, Potencia, Precio, CantPuertas,TipoEmbrague, TipoTraccion, CantPasajeros, idVendedor) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")) {
                ps.setString(1, vehiculo.getModelo());
                ps.setString(2, vehiculo.getMarca());
                ps.setString(3, vehiculo.getColor());
                ps.setInt(4, vehiculo.getKms());
                ps.setString(5, vehiculo.getCondicion());
                ps.setString(6, vehiculo.getTipo());
                ps.setDouble(7, vehiculo.getPotencia());
                ps.setDouble(8, vehiculo.getPrecio());
                
                if (vehiculo instanceof Auto auto) {
                    ps.setInt(9, auto.getCantPuertas());
                } else if (vehiculo instanceof Camioneta camioneta) {
                    ps.setString(11, camioneta.getTipoTaccion());
                } else if(vehiculo instanceof Moto moto) {
                    ps.setString(10, moto.getTipoEmbrague());
                    ps.setInt(12, moto.getCantPasajeros());
                }
                ps.setInt(13, idVendedor1);
                
                ps.executeUpdate();
            }
        } catch (SQLException ex) {
            Logger.getLogger(Vendedor.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Tira error acá");
        }
          
    }
    
 
    public List<String[]> mostrarInventario( String tabla) {
        List<String[]> listaVehiculos = new ArrayList<>();
        
        String sqlite = "SELECT id, Marca, Modelo, Kms, Condicion, Tipo, Precio FROM " + tabla;
        
        Statement st;

        try {
            st = ConexionSingleton.getInstance(baseDatos).getConnection().createStatement();
            ResultSet rs = st.executeQuery(sqlite);
            while(rs.next()) {
                String [] datos = new String[7];
                datos[0] = String.valueOf(rs.getInt("id"));
                datos[1] = rs.getString("Marca");
                datos[2] = rs.getString("Modelo");
                datos[3] = String.valueOf(rs.getInt("Kms"));
                datos[4] = rs.getString("Condicion");
                datos[5] = rs.getString("Tipo");
                datos[6] = String.valueOf(rs.getDouble("Precio"));

                listaVehiculos.add(datos);
                
            }
            st.close();
        } 
        catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return listaVehiculos;
    }
    
    public List<String[]> mostrarVehiculosClientes( String tabla) {
        List<String[]> listaVehiculos = new ArrayList<>();
        
        String sqlite = "SELECT Marca, Modelo, Condicion, Tipo FROM " + tabla;
        Statement st;
        
        
        try {
            st = ConexionSingleton.getInstance(baseDatos).getConnection().createStatement();
            ResultSet rs = st.executeQuery(sqlite);
            while(rs.next()) {
                String [] datos = new String[5];
                
                datos[0] = rs.getString("Marca");
                datos[1] = rs.getString("Modelo");
                datos[2] = rs.getString("Condicion");
                datos[3] = rs.getString("Tipo");

                listaVehiculos.add(datos);
                
            }
            st.close();
        } 
        catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return listaVehiculos;
    }
    
    
    
    public void eliminarVehiculo(int id) throws SQLException {
        PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("DELETE FROM Vehiculos WHERE id = ?");
        ps.setInt(1, id);
        ps.executeUpdate();
    }
    
    public void actualizarVentas(int idVendedor) throws SQLException {
        try (PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("UPDATE Vendedores SET CantVentas = CantVentas + 1 WHERE id = ?")) {
            ps.setInt(1, idVendedor);
            ps.executeUpdate();
        }
    }    
    

    public void modificarVehiculo(Vehiculo vehiculo) throws SQLException {
        PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement("UPDATE Vehiculos SET Marca = ?, Modelo = ?, Color = ?, Kms = ?, Condicion = ?, Potencia = ?, Precio = ?,CantPuertas = ?,TipoEmbrague = ?, TipoTraccion = ?, CantPasajeros = ? WHERE id = ?");
        try {
            
            ps.setString(1, vehiculo.getMarca());
            ps.setString(2, vehiculo.getModelo());
            ps.setString(3, vehiculo.getColor());
            ps.setInt(4, vehiculo.getKms());
            ps.setString(5, vehiculo.getCondicion());
            ps.setDouble(6, vehiculo.getPotencia());
            ps.setDouble(7, vehiculo.getPrecio());
            
            if (vehiculo instanceof Auto auto) {
                ps.setInt(8, auto.getCantPuertas());
            } else if (vehiculo instanceof Camioneta camioneta) {
                ps.setString(10, camioneta.getTipoTaccion());
            } else if(vehiculo instanceof Moto moto) {
                ps.setString(9, moto.getTipoEmbrague());
                ps.setInt(11, moto.getCantPasajeros());
            }
            ps.setInt(12, vehiculo.getIdVehiculo());
            ps.executeUpdate();
            
        } catch (SQLException e) {
            int maxReintentos = 5;
            int reintento = 0;
        
            if (e.getMessage().contains("database is busy")) {
                reintento++;
                System.out.println("Base de datos ocupada, reintentando (" + reintento + "/" + maxReintentos + ")");
                try {
                    Thread.sleep(1000);  
                } catch (InterruptedException ie) {
                    System.out.println(ie.getMessage());
                }
            }
        
        } finally {
            
            try {
                if (ps != null) ps.close();
            } catch (SQLException e) {
                System.out.println(e.getMessage());
            }
        }
    }

    public Vehiculo traerVehiculo(int id) throws SQLException {
        try {
            String sql = "SELECT * FROM Vehiculos WHERE id = ?";
            Vehiculo vehiculo = null;
            PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(sql);
            
            ps.setInt(1, id);
            
            ResultSet rs = ps.executeQuery();
            
            // Procesamos el resultado
            if (rs.next()) {
                String tipo = rs.getString("tipo");
                
                switch (tipo) {
                    case "Auto":
                        vehiculo = new Auto();
                        Auto auto = (Auto) vehiculo;
                        auto.setCantPuertas(rs.getInt("CantPuertas")); 
                        break;
                    case "Moto":
                        vehiculo = new Moto();
                        Moto moto = (Moto) vehiculo;
                        moto.setCantPasajeros(rs.getInt("CantPasajeros"));
                        moto.setTipoEmbrague(rs.getString("TipoEmbrague"));
                        break;
                    case "Camioneta":
                        vehiculo = new Camioneta();
                        Camioneta camioneta = (Camioneta) vehiculo;
                        camioneta.setTipoTaccion(rs.getString("TipoTraccion"));
                        break;
                    default:
                        System.out.println("Tipo de vehículo desconocido.");
                }
                
                vehiculo.setMarca(rs.getString("Marca"));
                vehiculo.setModelo(rs.getString("Modelo"));
                vehiculo.setColor(rs.getString("Color"));
                vehiculo.setKms(rs.getInt("Kms"));
                vehiculo.setCondicion(rs.getString("Condicion"));
                vehiculo.setPotencia(rs.getDouble("Potencia"));
                vehiculo.setPrecio(rs.getDouble("Precio"));
                
                return vehiculo;

            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return null;
        }
        return null;
    }

    public int traerVendedorAsociado(int idVehiculo) {
        int idVendedor = -1;
        try {
            String sql = "SELECT idVendedor FROM Vehiculos WHERE id = ?";
            PreparedStatement ps = ConexionSingleton.getInstance(baseDatos).getConnection().prepareStatement(sql);

            ps.setInt(1, idVehiculo); 
        
            ResultSet rs = ps.executeQuery(); 
        
            if (rs.next()) { 
                idVendedor = rs.getInt("idVendedor"); 
            }
            return idVendedor;
            
        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }
        return idVendedor;
    }


}