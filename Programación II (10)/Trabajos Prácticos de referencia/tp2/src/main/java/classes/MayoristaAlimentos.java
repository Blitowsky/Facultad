/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class MayoristaAlimentos {
    private String tamanio; 
    private String marcas;
    private String direccion;
    private String geolocalizacion; 
    private Productos productos;
    
    

    public String getTamanio() {
        return tamanio;
    }

    public void setTamanio(String tamanio) {
        this.tamanio = tamanio;
    }

    public String getMarcas() {
        return marcas;
    }

    public void setMarcas(String marcas) {
        this.marcas = marcas;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getGeolocalizacion() {
        return geolocalizacion;
    }

    public void setGeolocalizacion(String geolocalizacion) {
        this.geolocalizacion = geolocalizacion;
    }

    public Productos getProductos() {
        return productos;
    }
   
    
    public void vender(){ 
        System.out.println("Los mayoristas se encargan de vender productos.");
    }
    public void comprar(){ 
        System.out.println("Los mayoristas compran productos para venderlos.");
    }
    
        
    
    public void imprimirMontoTotal(){
        System.out.println("Subtotal: $ 12184");
    }
}
