/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author Estudiante
 */
public abstract class Vehiculo {
    
    protected int idVehiculo;
    protected String modelo;
    protected String marca;
    protected String color;
    protected int kms;
    protected String condicion;
    protected String tipo;
    protected double potencia;
    protected double precio;

    public Vehiculo(int idVehiculo, String modelo, String marca, String color, int kms, String condicion, String tipo, double potencia, double precio) {
        this.idVehiculo = idVehiculo;
        this.modelo = modelo;
        this.marca = marca;
        this.color = color;
        this.kms = kms;
        this.condicion = condicion;
        this.tipo = tipo;
        this.potencia = potencia;
        this.precio = precio;
    }
    
    public Vehiculo(){
        
    }
    
    //Setters y Getters

    public int getIdVehiculo() {
        return idVehiculo;
    }
    public void setIdVehiculo(int id) {
        this.idVehiculo = id;
    }
    public String getModelo() {
        return modelo;
    }

    public void setModelo(String modelo) {
        this.modelo = modelo;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getKms() {
        return kms;
    }

    public void setKms(int kms) {
        this.kms = kms;
    }

    public String getCondicion() {
        return condicion;
    }

    public void setCondicion(String condicion) {
        this.condicion = condicion;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public double getPotencia() {
        return potencia;
    }

    public void setPotencia(double potencia) {
        this.potencia = potencia;
    }

    public double getPrecio() {
        return precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }
    
    //Metodos propios
    
    public void arrancar(){
        System.out.println("arrancando");
    }
    
    public void detener(){
        System.out.println("deteniendo");
    }
    
    public void apagar(){
        System.out.println("apagando");
    }


}
