/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class Efectivo extends MetodosDePago {
  protected Double cantidad;

    public Efectivo(Double cantidad){
        this.cantidad = cantidad;
    }
    
    
    
    public Double getCantida() {
        return cantidad;
    }

    public void setCantida(Double cantida) {
        this.cantidad = cantida;
    }
  public void pagar() { 
      System.out.println("La cantidad en fectivo a pagar es: " );
      
      
  }

  /**
     *
     * @return
     */
    @Override
    public String toString() {
        return  "Metodo de pago: Efectivo = $ " + cantidad + "";
    }

  
  
  
  
  
  
}
