import java.util.ArrayList;
import java.util.Iterator;

public class listaPendientes {
    ArrayList <String> pendientes = new ArrayList<>();

    public void agregarTarea(String tarea){

        if (contieneTarea(tarea)){
            
            System.out.println("Ya existe la tarea ingresada");

        } else pendientes.add(tarea);

    }

    public void eliminarTarea(String tarea){

        Iterator <String> iterator = pendientes.iterator();

        while (iterator.hasNext()) {

            String objeto = iterator.next();

            if (objeto.equals(tarea)) {

                iterator.remove();

            }       
        }
    }
    
    public boolean contieneTarea(String tarea){

        for(String puntero : pendientes){

            if (puntero.equals(tarea)) {

                return true;
                
            }

        }
        return false;

    }

    

    
}
