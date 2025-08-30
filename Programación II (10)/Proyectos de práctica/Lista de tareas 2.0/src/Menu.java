import java.util.ArrayList;


public class Menu {

    public void imprimirMenu(){

        System.out.println("\n Menú \n 1 : Agregar tarea \n 2 : Eliminar tarea \n 3 : Finalizar tarea \n 4 : Reiniciar tarea \n 0 : Salir \n");

    }

    public void imprimirListas(ArrayList<String> lista, String estado1, String estado2){

        System.out.println("Las tareas " + estado2 + " son:");


        if(lista.size() != 0){

            for (String puntero : lista) {
            
                System.out.println("   La tarea " + puntero +  " está " + estado1);
    
            }

        } else System.out.println("---No existen tareas " + estado2 + "---");


    }

    public void cambiarEstado(ArrayList<String> dondeSacar, ArrayList<String> dondePoner, String entrada){
        

    }

    public void repeticionCheck(){

    }
}
