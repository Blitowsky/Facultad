/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tareas;

import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author ailen
 */
public class ListaTareas {

    private ArrayList<Tarea> tareas;

    //Constructor de ListaTareas, genera y asigna un ArrayList a la variable privada tareas
    public ListaTareas() {
        this.tareas = new ArrayList<>();
    }

    public ArrayList<Tarea> getTareas() {
        return tareas;
    }

    public void setTareas(ArrayList<Tarea> tareas) {
        this.tareas = tareas;
    }

    public void agregarTarea(Tarea tarea) {
        tareas.add(tarea);
    }

    public void mostrarTareas() {
        Iterator it = tareas.iterator();
        while (it.hasNext()) {
            System.out.println(it.next());
        }
    }

    public Tarea obtenerTarea(String nombreTarea) {
        for (Tarea elementoTarea : tareas) {
            if (elementoTarea.getNombre()./* esto compara ignorando las mayúsclas
            y/o minúsculas */equalsIgnoreCase(nombreTarea.trim())) {
                return elementoTarea;
            }
        }
        System.out.println("No se encontro la tarea solicitada.");
        return null; //todo el código está pensado para que si retorna null, no intente
                     //realizar la tarea solicitada y devuelva un error o una advertencia
    }

    public void contieneTarea(Tarea tarea) {

        if (tareas.contains(tarea)) {
            System.out.println("La tarea " + tarea.getNombre() + " se encuentra en la lista.");
        } else {
            System.out.println("La tarea  no se encuentra en la lista.");
        }

    }



    public void indiceTarea(Tarea tarea) {
        //pensada para que existan mas de una tarea con el mismo nombre
        if (tarea != null) {

            int indicePrimera = tareas.indexOf(tarea);
            System.out.println("La primera aparicion de la tarea " + tarea.getNombre() + " es en el indice: " + indicePrimera);

            int indiceUltima = tareas.lastIndexOf(tarea);
            System.out.println("La ultima aparicion de la tarea " + tarea.getNombre() + " es en el indice: " + indiceUltima);
       
        } else { //considera el caso de que la tarea no haya sido encontrada
            System.out.println("La tarea no existe");
        }
    }

    public void eliminarTarea(Tarea tarea) {

        if (tareas.remove(tarea)/* remueve el primer match */) {
            System.out.println("La tarea " + tarea.getNombre() + " ha sido eliminada.");
        } else {
            System.out.println("La tarea no ha sido encontrada en la lista.");
        }

    }

    public void limpiarLista() {
        tareas.clear();
    }

    public void estaVacia() {

        if (tareas.isEmpty()) {
            System.out.println("La lista esta vacia.");
        } else {
            System.out.println("La lista no esta vacia.");
        }

    }

    public ArrayList<Tarea> clonarLista() {
        return (ArrayList<Tarea>) tareas.clone();
    }
}
