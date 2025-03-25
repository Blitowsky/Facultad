/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package logica;

import java.util.List;
import persistance.MetodosVehiculo;

/**
 *
 * @author Estudiante
 */
public interface GestionarInventario {
    
    public void subirVehiculo(Vehiculo vehiculo, int idVendedor);
    public List<String[]> mostrarInventario(String tabla);
    public void venderVehiculo(int id, int idVendedor);
    
        
}

