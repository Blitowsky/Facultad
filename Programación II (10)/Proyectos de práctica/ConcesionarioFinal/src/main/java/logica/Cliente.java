/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

import java.sql.SQLException;
import persistance.MetodosClientes;


/**
 *
 * @author Estudiante
 */
public class Cliente extends Persona {
    
    private int idCliente;
    private String empresa; 
    private String Usuario;
    private String Contrasena;


    MetodosClientes metodos = new MetodosClientes();
    
    public Cliente(int idCliente, String empresa, String nombre, String apellido, int dni) {
        super(nombre, apellido, dni);
        this.idCliente = idCliente;
        this.empresa = empresa;
    }
    
    public Cliente() {
        
    }
    //Getters y setters
    
    public int getIdCliente() {
        return idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }
    
    public String getUsuario() {
        return Usuario;
    }

    public void setUsuario(String Usuario) {
        this.Usuario = Usuario;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }
    public String getEmpresa() {
        return empresa;
    }

    public void setEmpresa(String empresa) {
        this.empresa = empresa;
    }
    
    //Metodos Propios
    
    public void quejarse() {
        System.out.println("Pésimo servicio");
    }
    
    public Vehiculo comprarVehiculo() {
        //conectar base de datos o a vendedor;
        //return vehiculo;
        return null;
    }
    
    public void eliminar(int id) throws SQLException{
         metodos.eliminarCliente(id);
    }
    public void ofrecerAuto(Auto auto){
       // vendedor.agregarAuto();
    }
    
    public void ofrecerMoto(Moto moto){
       // vendedor.agregarAuto();
    }
    public void ofrecerCamioneta(Camioneta camioneta){
       // vendedor.agregarAuto();
    }
    
}
