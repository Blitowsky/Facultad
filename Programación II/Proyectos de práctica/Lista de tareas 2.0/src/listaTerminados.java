import java.util.ArrayList;
import java.util.Iterator;

public class listaTerminados {

    ArrayList <String> terminados = new ArrayList<>();

    public void terminarTarea(String tarea){

        terminados.add(tarea);

    }

    public void reinciarTarea(String tarea){

        Iterator <String> iterator = terminados.iterator();

        while (iterator.hasNext()) {

            String objeto = iterator.next();
        
            if(tarea.equals(objeto)){

                iterator.remove();

            }
        }
    }

    public boolean contieneTarea(String tarea){

        for(String puntero : terminados){

            if (puntero.equals(tarea)) {

                return true;
                   
            }

        }
        return false;

    }
}
