import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {

        //Variables
        int accion;
        String entrada;

        //Clases instanciadas
        Scanner scanner = new Scanner(System.in);
        Menu menu = new Menu();
        listaPendientes pendientes = new listaPendientes();
        listaTerminados terminados = new listaTerminados();


        do{
            
            menu.imprimirMenu();

            accion = scanner.nextInt();

            switch (accion) {

                case 1:

                    System.out.println("Ingrese una nueva tarea");
                    entrada = scanner.next();
                    pendientes.agregarTarea(entrada);

                break;

                case 2:

                    System.out.println("Ingrese la tarea a eliminar");
                    entrada = scanner.next();


                    if(pendientes.contieneTarea(entrada)){

                        pendientes.eliminarTarea(entrada);

                    } else System.out.println("No existe la tarea ingresada");

                
                break;

                case 3:

                    System.out.println("Ingrese la tarea finalizada");
                    entrada = scanner.next();

                    if(pendientes.contieneTarea(entrada)){

                        pendientes.eliminarTarea(entrada);
                        terminados.agregarTarea(entrada);

                    } else System.out.println("No existe la tarea ingresada");                    
                
                break;

                case 4:

                    System.out.println("Ingrese la tarea finalizada");
                    entrada = scanner.next();

                    if(terminados.contieneTarea(entrada)){

                        terminados.eliminarTarea(entrada);
                        pendientes.agregarTarea(entrada);

                    } else System.out.println("No existe la tarea ingresada"); 
                
                break;

                case 0:
                
                break;
            }

            //Muestra por pantalla de las listas

            menu.imprimirListas(pendientes.pendientes, "pendiente", "pendientes");

            menu.imprimirListas(terminados.terminados, "finalizada", "finalizadas");

        }while(accion != 0);

    }
}
