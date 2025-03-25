/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package classes;

/**
 *
 * @author estudiante
 */
public class MetodosDePago {
    public String eficiencia;
    public boolean virtual;
    public boolean fisico;
   

    public String getEficiencia() {
        return eficiencia;
    }

    public void setEficiencia(String eficiencia) {
        this.eficiencia = eficiencia;
    }

    public boolean isVirtual() {
        return virtual;
    }

    public void setVirtual(boolean virtual) {
        this.virtual = virtual;
    }

    public boolean isFisico() {
        return fisico;
    }

    public void setFisico(boolean fisico) {
        this.fisico = fisico;
    }
    
    public void esFiscoOVirtual(int opcion){
        switch (opcion) {
            case 1 -> {
                setFisico(false);
                setVirtual(true);
            }
            case 2 -> {
                setFisico(true);
                setVirtual(false);
            }
            default -> System.out.println("");
        }
    }
  

}
