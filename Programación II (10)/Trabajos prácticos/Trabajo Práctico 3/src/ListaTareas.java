import java.util.ArrayList;
import java.util.Iterator;


public class ListaTareas {

    private ArrayList<Tarea> tareas;

    public ListaTareas(){

        this.tareas = new ArrayList<>();

    }

    public void agregarTarea(Tarea tarea){

        tareas.add(tarea);

    }

    public void mostrarTareas(){

        for (Tarea puntero : tareas) {

            Tarea tarea = puntero;
            tarea.mostrarTarea();            
        }

    }   

    public int tamañoLista(){

        return tareas.size();

    }

    public Tarea obtenerTarea(String nombreTarea){

        for (Tarea puntero : tareas) {
            
            if (puntero.getNombre().equalsIgnoreCase(nombreTarea.trim())) {

                return puntero;
                
            }
        }
        return null;
    }

    public boolean contieneTarea(Tarea tarea){

        for(Tarea puntero : tareas){

            if(tareas.contains(puntero)){

                return true;

            }
        }
        return false;
    }

    public int consultarPrimerIndice(Tarea tarea){

        return tareas.indexOf(tarea);

    }
    public int consultarUltimoIndice(Tarea tarea){

        return tareas.lastIndexOf(tarea);

    }

    public void eliminarTarea(Tarea tarea){

        Iterator<Tarea> iterator = tareas.iterator();

        while (iterator.hasNext()) {
            
            if (iterator.next() == tarea) {

                iterator.remove();
                
            }
        }
    }

    public void vaciarLista(){

        tareas.clear();

    }

    public boolean listaVacia(){

        if(tareas.isEmpty()){

            return true;

        }
        return false;
    }

    public ArrayList<Tarea> clonarLista(){

        return (ArrayList<Tarea>) tareas.clone();

    }

}