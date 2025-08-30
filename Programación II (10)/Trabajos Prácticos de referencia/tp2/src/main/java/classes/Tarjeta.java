/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class Tarjeta extends MetodosDePago {
    private final String banco;
    private final Boolean credito;
    private final Boolean debito;
    protected final Double cantidad;
    //public String pin;

    public Tarjeta(String banco, Boolean credito, Boolean debito, Double cantidad) {
        this.banco = banco;
        this.credito = credito;
        this.debito = debito;
        this.cantidad = cantidad;
    }
    
    public String getBanco() {
        return banco;
    }

    public Boolean getCredito() {
        return credito;
    }

    public Boolean getDebito() {
        return debito;
    }

    public Double getCantidad() {
        return cantidad;
    }
 
    
    /**
     *
     * @return
     */
    @Override
    public String toString() {
        return  "Metodo de pago: Tarjeta:" + banco +", Credito: "+ credito + ", Debito: " + debito + ", Total: $" + cantidad + "";
    }

    
}
