/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class Productos {
    private int precios;
    private String empaques;
    protected String marca;
    private int tamanio;

    public Productos(int precios, String empaques, String marca, int tamanio, String calidad) {
        this.precios = precios;
        this.empaques = empaques;
        this.marca = marca;
        this.tamanio = tamanio;
        this.calidad = calidad;
    }

    public Productos() {
    }
    
    
    
    public String calidad;

    public int getPrecios() {
        return precios;
    }

    public void setPrecios(int precios) {
        this.precios = precios;
    }

    public String getEmpaques() {
        return empaques;
    }

    public void setEmpaques(String empaques) {
        this.empaques = empaques;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getTamanio() {
        return tamanio;
    }

    public void setTamanio(int tamanio) {
        this.tamanio = tamanio;
    }

    public String getCalidad() {
        return calidad;
    }

    public void setCalidad(String calidad) {
        this.calidad = calidad;
    }
    
    public void usos(Clientes cliente){ 
        System.out.println("El cliente " + cliente.getNombre() + " compro " + cliente.producto.getMarca());
    }
    
            }
