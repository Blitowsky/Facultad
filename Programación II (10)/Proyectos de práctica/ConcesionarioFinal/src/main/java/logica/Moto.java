/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author Estudiante
 */
public class Moto extends Vehiculo {
    private int cantPasajeros;
    private String tipoEmbrague;

    public Moto(int cantPasajeros, String tipoEmbrague, int idVehiculo, String modelo, String marca, String color, int kms, String condicion, String tipo, double potencia, double precio) {
        super(idVehiculo, modelo, marca, color, kms, condicion, tipo, potencia, precio);
        this.cantPasajeros = cantPasajeros;
        this.tipoEmbrague = tipoEmbrague;
    }
    
    public Moto() {
        
    }
    
    //Getters y setters

    public int getCantPasajeros() {
        return cantPasajeros;
    }

    public void setCantPasajeros(int cantPasajeros) {
        this.cantPasajeros = cantPasajeros;
    }

    public String getTipoEmbrague() {
        return tipoEmbrague;
    }

    public void setTipoEmbrague(String tipoEmbrague) {
        this.tipoEmbrague = tipoEmbrague;
    }
    
    //Metodos propios 
    public void cargarbaul() {
        
    }
}
