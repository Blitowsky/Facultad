/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class Clientes extends Persona {
    private String frecuencia;
    private Boolean cuenta;
    private final Integer idCuenta;
    private double puntos;
    protected Productos producto;
    protected MetodosDePago metodos;

    public Clientes(String nombre, String apellido, int edad, String frecuencia, Boolean cuenta, Integer idCuenta, double puntos, Productos producto) {
        super(nombre, apellido, edad);
        this.frecuencia = frecuencia;
        this.cuenta = cuenta;
        this.idCuenta = idCuenta;
        this.puntos = puntos;
        this.producto = producto;
    }

    

    
    
    

    
    
    public String getFrecuencia() {
        return frecuencia;
    }

    public void setFrecuencia(String frecuencia) {
        this.frecuencia = frecuencia;
    }

    public Boolean getCuenta() {
        return cuenta;
    }

    public void setCuenta(Boolean cuenta) {
        this.cuenta = cuenta;
    }

    public double getPuntos() {
        return puntos;
    }

    public void setPuntos(double puntos) {
        this.puntos = puntos;
    }
    
    public void comprar() {
        System.out.println("El cliente compra...");
          
    }

    /**
     *
     * @return
     */
    @Override
    
    public String toString() {
        return  "Cliente: {Nombre = " + nombre +" Apellido= "+ apellido + " Edad= " + edad + " Frecuencia=" + frecuencia + ", Cuenta=" + cuenta + ", IdCuenta=" + idCuenta + ", Puntos=" + puntos + '}';
    }


}
