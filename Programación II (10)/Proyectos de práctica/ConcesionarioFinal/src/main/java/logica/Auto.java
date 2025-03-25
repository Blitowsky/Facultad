/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.awt.event.ActionEvent;

/**
 *
 * @author Estudiante
 */
public class Auto extends Vehiculo {
    private int cantPuertas;

    public Auto(int cantPuertas, int idVehiculo, String modelo, String marca, String color, int kms, String condicion, String tipo, double potencia, double precio) {
        super(idVehiculo, modelo, marca, color, kms, condicion, tipo, potencia, precio);
        this.cantPuertas = cantPuertas;
    }
    
    public Auto() {
        
    }
    
    //Getters y setters
    public int getCantPuertas() {
        return cantPuertas;
    }

    public void setCantPuertas(int cantPuertas) {
        this.cantPuertas = cantPuertas;
    }
    
    //Metodos propios
    public void subirPasajeros() {
        System.out.println("Subiendo");
    }
    
    public void abrirMaletero() {
        System.out.println("Abriendo Maletero");
    }

    public void intDniActionPerformed(ActionEvent evt) {
        // TODO add your handling code here:
    }

}
