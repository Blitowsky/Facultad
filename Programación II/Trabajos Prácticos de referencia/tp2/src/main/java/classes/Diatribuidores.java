/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class Diatribuidores { 
    private String nombre;
    private String transportes;
    private String tamaño;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTransportes() {
        return transportes;
    }

    public void setTransportes(String transportes) {
        this.transportes = transportes;
    }

    public String getTamaño() {
        return tamaño;
    }

    public void setTamaño(String tamaño) {
        this.tamaño = tamaño;
    }
    public void cobran(){ 
        System.out.println("Los distribuidores cobran por sus productos.");
    }
    public void distribuyen(){
        System.out.println("Los ditribuidores se encargan de entregar los productos.");
    }
    
    
}
