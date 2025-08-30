/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class Personal extends Persona { 
    public String calidad;
    public int cantidadPersona;
    protected String eficacia; 

    public Personal(String nombre, String apellido, int edad) {
        super(nombre, apellido, edad);
    }
    
    public void trabajar(){
        System.out.println("El personal trabaja.");
    }

    
    
                    
    
}
