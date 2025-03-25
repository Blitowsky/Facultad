/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package persistance;

import java.sql.*;
/**
 *
 * @author Andrea
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ConexionSingleton {

    private String baseDatos;
    public static ConexionSingleton _instance;
    private Connection connection;

    private ConexionSingleton(String database) {
        this.baseDatos = database;
        try {
            Class.forName("org.sqlite.JDBC");
            connection = DriverManager.getConnection("jdbc:sqlite:"+this.baseDatos);
        } catch (SQLException | ClassNotFoundException e){
            System.out.println(e.getMessage());
        }
    }

    public static ConexionSingleton getInstance(String baseDatos) {
        if(_instance == null){
            _instance = new ConexionSingleton(baseDatos);
        }else{
            //System.out.println("Ya fué creada.");
        }
        return _instance;
    }


    public Connection getConnection() {
        return connection;
    }
    
    
    public void crearTabla() {
        
        
        String sqlCreateTableVendedores = "CREATE TABLE IF NOT EXISTS Vendedores ("
        + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        + "Nombre TEXT NOT NULL,"
        + "Apellido TEXT NOT NULL,"
        + "Dni INTEGER NOT NULL,"
        + "AniosExp INT NOT NULL,"       
        + "Sueldo REAL NOT NULL,"      
        + "CantVentas INTEGER NOT NULL,"
        + "Tipo TEXT NOT NULL,"
        + "Usuario TEXT UNIQUE,"       
        + "Contrasena TEXT NOT NULL"  
        + ");";
        
        
        String sqlCreateTableClientes = "CREATE TABLE IF NOT EXISTS Clientes (" 
	+"id	INTEGER PRIMARY KEY AUTOINCREMENT,"
	+"Nombre	TEXT NOT NULL,"
	+"Apellido	TEXT NOT NULL,"
	+"Dni	INTEGER NOT NULL,"
	+"Empresa	TEXT NOT NULL,"
	+"Usuario	TEXT UNIQUE,"
	+"Contrasena	TEXT"
        +");";
        

        String sqlCreateTableVehiculo = "CREATE TABLE IF NOT EXISTS Vehiculos ("
        + "id INTEGER PRIMARY KEY AUTOINCREMENT,"
        + "Marca TEXT NOT NULL,"
        + "Modelo TEXT NOT NULL,"
        + "Color TEXT NOT NULL,"
        + "Kms INTEGER NOT NULL,"
        + "Condicion TEXT NOT NULL,"
        + "Tipo TEXT NOT NULL,"
        + "Potencia REAL NOT NULL,"
        + "Precio REAL NOT NULL,"
        + "CantPuertas INTEGER,"
        + "TipoEmbrague TEXT,"
        + "TipoTraccion TEXT,"
        + "CantPasajeros INTEGER,"
        + "idCliente INTEGER,"
        + "idVendedor INTEGER,"
        + "FOREIGN KEY(idCliente) REFERENCES Clientes(id),"
        + "FOREIGN KEY(idVendedor) REFERENCES Vendedores(id)"
        + ");"; 

        
        String sqlCreateTableClientes_Vendedores = "CREATE TABLE IF NOT EXISTS Clientes_Vendedores (" 
	+ "idCliente	INTEGER,"
	+ "idVendedor	INTEGER,"
        + "tipoRelacion TEXT,"
	+ "PRIMARY KEY(idVendedor,idCliente, tipoRelacion)"
        + "FOREIGN KEY(idCliente) REFERENCES Clientes(id),"
        + "FOREIGN KEY(idVendedor) REFERENCES Vendedores(id));";    
        
        
        try (Statement stmt = connection.createStatement()) {
            stmt.execute(sqlCreateTableVehiculo);
            stmt.execute(sqlCreateTableClientes);            
            stmt.execute(sqlCreateTableVendedores);
            stmt.execute(sqlCreateTableClientes_Vendedores);
        } catch (SQLException e) {
            System.out.println("Error al crear las tablas: " + e.getMessage());
        }
        
   }
    
    public void agregarGerentes() {
        try {
            String sql = "INSERT OR IGNORE INTO Vendedores (Nombre, Apellido, Dni, AniosExp, Sueldo, CantVentas, Tipo, Usuario, Contrasena) VALUES ('Lionel', 'Scaloni', 25789456, 10,250000, 15, 'Gerente', 'lio', '181222') ";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.executeUpdate();
            sql = "INSERT OR IGNORE INTO Vendedores (Nombre, Apellido, Dni, AniosExp, Sueldo, CantVentas, Tipo, Usuario, Contrasena) VALUES ('Pablito', 'Aimar', 25123456, 12, 240000, 120, 'Gerente', 'pablito', '181222')";
            ps = connection.prepareStatement(sql);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ConexionSingleton.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public void cerrarConexion() {
        if (connection != null) {
            try {
                connection.close();
                System.out.println("Conexión cerrada.");
            } catch (SQLException e) {
                System.out.println("Error al cerrar la conexión: " + e.getMessage());
            }
        }
    }

    
}
