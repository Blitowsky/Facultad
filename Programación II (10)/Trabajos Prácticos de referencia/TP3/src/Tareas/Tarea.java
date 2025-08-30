/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tareas;

/**
 *
 * @author ailen
 */
public class Tarea {
    private String nombre;
    private String descripcion;
    private boolean completada;
    
    public Tarea(){
        this.completada = false;
    }
    
    public Tarea(String nombre, String descripcion) {
        this.nombre = nombre.trim();
        this.descripcion = descripcion;
        this.completada = false;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isCompletada() {
        return completada;
    }

    public void setCompletada(boolean completada) {
        this.completada = completada;
    }

    public void completarTarea() {
        System.out.println("Usted ha completado la tarea: " + this.getNombre() + " con exito");
        this.completada = true;
    }

    public void mostrarTarea() {
        System.out.println("Nombre: " + nombre + ", descripcion: " + descripcion);
        if (completada == true) {
            System.out.println("La tarea esta completada.");
        } else {
            System.out.println("La tarea esta incompleta.");
        }
    }

    @Override
    public String toString() {
        return  "Nombre: " + this.nombre + ", descripcion: " + this.descripcion ;
    }
    
    
}
