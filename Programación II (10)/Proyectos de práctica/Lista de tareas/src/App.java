import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {

        int acción;
        String entrada;
        Lista lista = new Lista();
        Terminados terminados = new Terminados();
        Scanner scanner = new Scanner(System.in);

        do{


            System.out.println("\n Ingrese la acción a realizar \n 1 : Agregar tarea \n 2 : Concluir tarea \n 3 : Reiniciar tarea \n 4 : Eliminar tarea \n 0 : Salir del programa");
            acción = scanner.nextInt();

            switch (acción) {

                case 1:

                    System.out.println("Ingrese el elemento a agregar");
                    entrada = scanner.next();

                    lista.agregarObjeto(entrada);

                    break;

                case 2:

                    System.out.println("Ingrese el elemento a concluir");
                    entrada = scanner.next();

                    terminados.tacharPendiente(entrada);

                    break;

                case 3:

                    System.out.println("Ingrese la tarea a reinciar");
                    entrada = scanner.next();

                    if(terminados.contieneElemento(entrada) == false){

                        System.out.println("Esta tarea no estaba anterioremente, ingresándola a la lista...");
                        lista.agregarObjeto(entrada);

                    }else{

                        terminados.reiniciarTarea(entrada);
                        
                    }

                    break;  
                    
                case 4:
                    System.out.println("Ingrese la tarea a eliminar");
                    entrada = scanner.next();

                    lista.eliminarObjeto(entrada);
                    break;

                case 0:

                    break;
            }
        
            System.out.println("La lista de tareas es la siguiente: \n");
            for (int i = 0; i < lista.getPrueba().size();i++) {

                
                System.out.println("La tarea número " + (i + 1) + " es: " + lista.getPrueba(i) + ". Su estado es : " + terminados.estadoTerminado(lista.getPrueba(i)));
                terminados.estado = "sin terminar"; //solución poco elegante

            }


        } while (acción != 0);
        



    }
}
