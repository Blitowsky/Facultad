/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.util.ArrayList;

/**
 *
 * @author Estudiante
 */
public class Concesionaria {
    private String nombre;
    private String ubicacion;
    private ArrayList listaClientes;
    private ArrayList listaEmpleados;
    private ArrayList listaVehiculos;

    public Concesionaria(String nombre, String ubicacion, ArrayList listaClientes, ArrayList listaEmpleados, ArrayList listaVehiculos) {
        this.nombre = nombre;
        this.ubicacion = ubicacion;
        this.listaClientes = listaClientes;
        this.listaEmpleados = listaEmpleados;
        this.listaVehiculos = listaVehiculos;
    }

    public Concesionaria () {
        
    }
    
    //Getters y setters

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getUbicacion() {
        return ubicacion;
    }

    public void setUbicacion(String ubicacion) {
        this.ubicacion = ubicacion;
    }

    public ArrayList getListaClientes() {
        return listaClientes;
    }

    public void setListaClientes(ArrayList listaClientes) {
        this.listaClientes = listaClientes;
    }

    public ArrayList getListaEmpleados() {
        return listaEmpleados;
    }

    public void setListaEmpleados(ArrayList listaEmpleados) {
        this.listaEmpleados = listaEmpleados;
    }

    public ArrayList getListaVehiculos() {
        return listaVehiculos;
    }

    public void setListaVehiculos(ArrayList listaVehiculos) {
        this.listaVehiculos = listaVehiculos;
    }
    
    //Metodos propios
    
    public void contratarEmpleado() {
        System.out.println("Contratado!");
    }
    
    public void despedirEmpleado() {
        System.out.println("Despedido!");
    }
}
