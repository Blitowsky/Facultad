/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author Estudiante
 */
public class Limpieza extends Empleado{
    private String tipoLimpieza;
    private String Material;

    public Limpieza(String tipoLimpieza, String Material, int aniosExperiencia, double sueldo, String nombre, String apellido, int dni) {
        super(aniosExperiencia, sueldo, nombre, apellido, dni);
        this.tipoLimpieza = tipoLimpieza;
        this.Material = Material;
    }

    
    
    public Limpieza() {
        
    }
    
    //Getters y setters

    public String getTipoLimpieza() {
        return tipoLimpieza;
    }

    public void setTipoLimpieza(String tipoLimpieza) {
        this.tipoLimpieza = tipoLimpieza;
    }

    public String getMaterial() {
        return Material;
    }

    public void setMaterial(String Material) {
        this.Material = Material;
    }
    
    //Metodos propios 
    
    public void limpiar() {
        System.out.println("Limpiando!");
    }
    
}
