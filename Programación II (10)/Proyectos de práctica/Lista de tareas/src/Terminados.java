import java.util.ArrayList;
import java.util.Iterator;

public class Terminados {


    private ArrayList<String> terminados = new ArrayList<>();

    public Iterator<String> iterador = terminados.iterator();

    Lista lista = new Lista();

    String estado = "sin terminar";
    boolean contiene;


    public String estadoTerminado(String elemento){


        for (String puntero : terminados) {

            if (puntero.equals(elemento)) estado = "terminado";
            
        }
        return estado;
    }

    public void tacharPendiente(String terminado){

        terminados.add(terminado);

    }

    public void reiniciarTarea(String renovado){

        for (String puntero : terminados) {

            if(puntero.equals(renovado)){

                while (iterador.hasNext()) {

                    String elemento = iterador.next();
        
                    if(elemento.equals(renovado))iterador.remove();
                    
                }  

            }
            else if (lista.contieneElemento(renovado)){

                System.out.println("Aún no has terminado esa tarea");

            }
            else{

                System.out.println("Para reiniciar una tarea, debes haberla ingresado a la Lista ");

            }
            
        }

              
    }

    public boolean contieneElemento(String elemento){

        for (String puntero : terminados) {
            
            if(puntero.equals(elemento)){

                return true;
            } 
        }
        return false;
    }
}