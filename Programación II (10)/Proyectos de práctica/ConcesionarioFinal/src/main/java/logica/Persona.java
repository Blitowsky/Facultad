/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author Estudiante
 */
public abstract class Persona {
    protected String nombre;
    protected String apellido;
    protected int dni;

    public Persona(String nombre, String apellido, int dni) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.dni = dni;
    }
    
    public Persona(){
        
    }

    //Setters y Getters
    
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }
    
    //Metodos propios
    
    public void respirar() {
        System.out.println("Respirando"); 
    }
    
    public void caminar(){
        System.out.println("Caminando");
    }
    
    public void trabajar() {
        System.out.println("Trabajando");
    }
}
