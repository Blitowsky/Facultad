package logica;

import java.sql.*;
import persistance.ConexionSingleton;
//import persistance.validarInicio;
import views.frame;


/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

/**
 *
 * @author Estudiante
 */
public class Main {
    
    public static void main(String[] args) throws SQLException {
        ConexionSingleton base = ConexionSingleton.getInstance("concesionaria.db");
        base.crearTabla();
        base.agregarGerentes();
        frame ventana = new frame();
        ventana.setLocationRelativeTo(null);
        ventana.setVisible(true);
    }
}
