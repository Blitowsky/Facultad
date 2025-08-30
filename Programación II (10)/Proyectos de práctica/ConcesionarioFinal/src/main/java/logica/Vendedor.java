/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.sql.*;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import persistance.MetodosVehiculo;
import persistance.MetodosClientes;

/**
 *
 * @author Estudiante
 */

public class Vendedor extends Empleado implements GestionarInventario {
    MetodosVehiculo metodo = new MetodosVehiculo();    
    

    private int idVendedor;
    private int cantVentas;
    private String usuario;
    private String contrasena;



    
    public Vendedor(int idVendedor, int cantVentas, int aniosExperiencia, double sueldo, String nombre, String apellido, int dni) {
        super(aniosExperiencia, sueldo, nombre, apellido, dni);
        this.idVendedor = idVendedor;
        this.cantVentas = cantVentas;
    }
    
    
    public Vendedor(){
        
    }    
    
    //Getters y Setters

    public int getIdVendedor() {
        return idVendedor;
    }

    public int getCantVentas() {
        return cantVentas;
    }

    public void setCantVentas(int cantVentas) {
        this.cantVentas = cantVentas;
    }

    public void setIdVendedor(int idVendedor) {
        this.idVendedor = idVendedor;
    }
    
    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
    
    //Metodos Propios

    public void agregarAuto(String modelo, String marca, String color, int km, String condicion, double potenciaMotor, double precio, int cantPuertas, int idVendedor1){
        
        Auto auto = new Auto();
        auto.setModelo(modelo);
        auto.setMarca(marca);
        auto.setColor(color);
        auto.setKms(km);
        auto.setCondicion(condicion);
        auto.setTipo("Auto");
        auto.setPotencia(potenciaMotor);
        auto.setPrecio(precio);
        auto.setCantPuertas(cantPuertas);
        subirVehiculo(auto, idVendedor1);
    }
    

    public void agregarMoto(String modelo, String marca, String color, int kilometros, String cond, double potenciaMotor, double precio, String embrague, int pasajeros, int idVendedor1){
        Moto moto = new Moto();
        moto.setModelo(modelo);
        moto.setMarca(marca);
        moto.setColor(color);
        moto.setKms(kilometros);
        moto.setCondicion(cond);
        moto.setTipo("Moto");
        moto.setPotencia(potenciaMotor);
        moto.setPrecio(precio);
        moto.setTipoEmbrague(embrague);
        moto.setCantPasajeros(pasajeros);
        
        subirVehiculo(moto, idVendedor1);
    }
    
    public void agregarCamioneta(String modelo, String marca, String color, int kilometros, String cond, double potenciaMotor, double precio, String traccion, int idVendedor1){
        Camioneta camioneta = new Camioneta();
        camioneta.setModelo(modelo);
        camioneta.setMarca(marca);
        camioneta.setColor(color);
        camioneta.setKms(kilometros);
        camioneta.setCondicion(cond);
        camioneta.setTipo("Camioneta");
        camioneta.setPotencia(potenciaMotor);
        camioneta.setPrecio(precio);
        camioneta.setTipoTaccion(traccion);
        subirVehiculo(camioneta, idVendedor1);
    }
    
   
    @Override
    public void subirVehiculo(Vehiculo vehiculo, int idVendedor1) {
            metodo.subirVehiculo(vehiculo, idVendedor1);
    }
    
    
    @Override
    public List<String[]> mostrarInventario(String tabla) {
        return metodo.mostrarInventario(tabla);
    }
    
    @Override
    public void venderVehiculo(int id, int idVendedor) {
        try {
            eliminarVehiculo(id);
            metodo.actualizarVentas(idVendedor);
        } catch (SQLException ex) {
            Logger.getLogger(Vendedor.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

    public void eliminarVehiculo(int idVehiculo) throws SQLException {
        metodo.eliminarVehiculo(idVehiculo);
    }
    
    public void modificarVehiculo(Vehiculo vehiculo, String marca, String modelo, String color, int kilometros, String cond, double potenciaMotor, double precio, int cantPuertas, String traccion, String embrague, int pasajeros) throws SQLException {
        
        vehiculo.setMarca(marca);
        vehiculo.setModelo(modelo);
        vehiculo.setColor(color);
        vehiculo.setKms(kilometros);
        vehiculo.setCondicion(cond);
        vehiculo.setPotencia(potenciaMotor);
        vehiculo.setPrecio(precio);
        
        if (vehiculo instanceof Auto auto) {
            auto.setCantPuertas(cantPuertas);
        } else if (vehiculo instanceof Camioneta camioneta) {
          camioneta.setTipoTaccion(traccion);
        } else if(vehiculo instanceof Moto moto) {
           moto.setCantPasajeros(pasajeros);
           moto.setTipoEmbrague(embrague);
        }
        
        metodo.modificarVehiculo(vehiculo);
    }

    public Vehiculo traerVehiculo(int id) throws SQLException {
        return metodo.traerVehiculo(id);
    }
    
    public List<String[]> mostrarVehiculosClientes(String tabla) {
        return metodo.mostrarVehiculosClientes(tabla);
    }
    
    
    MetodosClientes metodosClientes = new MetodosClientes();
    public boolean agregarCliente(String nombre, String apellido, int dni, String empresa, String usuario, String contrasena) throws SQLException {
        
        Cliente cliente = new Cliente();
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDni(dni);
        cliente.setEmpresa(empresa);
        cliente.setUsuario(usuario);
        cliente.setContrasena(contrasena);
        
        boolean agregar = metodosClientes.subirCliente(cliente);
        return agregar;
    }
    
    public List<String[]> mostrarClientes(String tabla, String letra) {
        return metodosClientes.mostrarClientes(tabla, letra);
    }

    public void eliminarCliente(int idCliente) throws SQLException {
        metodosClientes.eliminarCliente(idCliente);
    }
    
    public boolean modificarCliente(Cliente cliente, String nombre, String apellido, int dni, String empresa, String usuario, String contrasena) throws SQLException {
        
        cliente.setNombre(nombre);
        cliente.setApellido(apellido);
        cliente.setDni(dni);
        cliente.setEmpresa(empresa);
        cliente.setUsuario(usuario);
        cliente.setContrasena(contrasena);
        boolean modificar = metodosClientes.modificarCliente(cliente);
        return modificar;
    }

    public Cliente traerCliente(int idCliente) {
        return metodosClientes.traerCliente(idCliente);
    }

    public void relacionarCliente(int idCliente, int idVendedor, String relacion) throws SQLException {
        metodosClientes.relacionarVendedorCliente(idCliente, idVendedor, relacion);
    }

    public int traerVendedorAsociado(int idVehiculo) {
        return metodo.traerVendedorAsociado(idVehiculo);
    }
    
}
