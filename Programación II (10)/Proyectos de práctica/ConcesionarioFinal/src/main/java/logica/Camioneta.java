/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package logica;

/**
 *
 * @author Estudiante
 */
public class Camioneta extends Vehiculo{
   
    private String tipoTaccion;

    public Camioneta(String tipoTaccion, int idVehiculo, String modelo, String marca, String color, int kms, String condicion, String tipo, double potencia, double precio) {
        super(idVehiculo, modelo, marca, color, kms, condicion, tipo, potencia, precio);
        this.tipoTaccion = tipoTaccion;
    }
    
    public Camioneta() {
        
    }
    
    //Getters y setters
    
    public String getTipoTaccion() {
        return tipoTaccion;
    }

    public void setTipoTaccion(String tipoTaccion) {
        this.tipoTaccion = tipoTaccion;
    }
   
   //Metodos Propios
   public void cargarCaja() {
       
   }
}
