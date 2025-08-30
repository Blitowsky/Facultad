/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author Estudiante
 */
public abstract class Empleado extends Persona {
    
    protected int aniosExperiencia;
    protected double sueldo;

    public Empleado(int aniosExperiencia, double sueldo, String nombre, String apellido, int dni) {
        super(nombre, apellido, dni);
        this.aniosExperiencia = aniosExperiencia;
        this.sueldo = sueldo;
    }
    
    public Empleado(){
        
    }
    
    //Getters y Setters

    public int getAniosExperiencia() {
        return aniosExperiencia;
    }

    public void setAniosExperiencia(int aniosExperiencia) {
        this.aniosExperiencia = aniosExperiencia;
    }

    public double getSueldo() {
        return sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }
    
    //Metodos propios
    
    public void cobrarSueldo(){
        System.out.println("Sueldo cobrado");
    }
    
    public void renunciar(){
        System.out.println("Renuncio!");
    }
    
}
