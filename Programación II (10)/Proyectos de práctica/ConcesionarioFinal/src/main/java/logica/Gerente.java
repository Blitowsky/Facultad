/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;


import java.sql.SQLException;
import java.util.List;
import persistance.MetodosVendedor;

/**
 *
 * @author Estudiante
 */
public class Gerente extends Empleado{
    
    private int idGerente;

    public Gerente(int idGerente, int aniosExperiencia, double sueldo, String nombre, String apellido, int dni) {
        super(aniosExperiencia, sueldo, nombre, apellido, dni);
        this.idGerente = idGerente;
    }
    
    public Gerente(){
        
    }
    
    //Getters y Setters

    public int getIdGerente() {
        return idGerente;
    }

    public void setIdGerente(int idGerente) {
        this.idGerente = idGerente;
    }
    
    
    public void pagarSueldo(){
        System.out.println("Sueldo pagado");
    }

    
    MetodosVendedor metodosVendedor = new MetodosVendedor();
    
    public boolean agregarVendedor(String nombre, String apellido, int dni,double sueldo, int cantVent ,String usuario, String contraseña) throws SQLException {
        
        Vendedor vendedor = new Vendedor();
        int aniosExp = 0;
        vendedor.setNombre(nombre);
        vendedor.setApellido(apellido);
        vendedor.setDni(dni);
        vendedor.setAniosExperiencia(aniosExp);
        vendedor.setSueldo(sueldo);
        vendedor.setCantVentas(cantVent);
        String tipo = "Vendedor";
        
        
        boolean agregar = metodosVendedor.agregarVendedor(vendedor, usuario, contraseña, tipo);
        return agregar;
    }
    
    public List<String[]> mostrarVendedores(String tabla, String letra) {
        return metodosVendedor.mostrarVendedores(tabla, letra);
    }

    public void eliminarVendedor(int idVendedor) throws SQLException {
        metodosVendedor.eliminarVendedor(idVendedor);
    }
    
    public boolean modificarVendedores(Vendedor vendedor, String nombre, String apellido, int dni, double sueldo, String usuario, String contrasena) throws SQLException {
        
        vendedor.setNombre(nombre);
        vendedor.setApellido(apellido);
        vendedor.setDni(dni);
        vendedor.setSueldo(sueldo);
        vendedor.setUsuario(usuario);
        vendedor.setContrasena(contrasena);
          
        boolean modificar = metodosVendedor.modificarVendedor(vendedor);
        return modificar;
    }

    public Vendedor traerVendedor(int idVendedor) {
        return metodosVendedor.traerVendedor(idVendedor);
    }

    public List<String[]> obtenerVendedoresPorCliente(int idCliente) {
        return metodosVendedor.obtenerVendedoresPorCliente(idCliente);
    }

    public List<String[]> obtenerClientesPorVendedor(int idVendedor) {
        return metodosVendedor.obtenerClientesPorVendedor(idVendedor);
    }

    public List<String[]> obtenerVehiculosVendedor(int idVendedor) {
        return metodosVendedor.obtenerVehiculosVendedor(idVendedor);
    }

    
}
