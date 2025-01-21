/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public abstract class Persona { 
    public String nombre;
    public String apellido;
    public int edad;
    public String ocupacion; 
    

    
    public Persona(String nombre, String apellido, int edad){
        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad; 
    }
    
    
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

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getOcupacion() {
        return ocupacion;
    }

    public void setOcupacion(String ocupacion) {
        this.ocupacion = ocupacion;
    }
    
    public void camina(){
        System.out.println(this.nombre + " puede desplazarse");
    }
    
    public void habla(){
        System.out.println(this.nombre + " puede comunicarse");
    }
    public void piensa(){ 
        System.out.println(this.nombre + " piensa");
    }
    public void siente(){
        System.out.println(this.nombre + " siente");
    }
    
}
    
    
