import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {

        int accion;
        String entrada;

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

                    if (pendientes.contieneTarea(entrada)){
            
                        System.out.println("Ya existe la tarea ingresada");
                    }
                    else{
        
                        pendientes.agregarTarea(entrada);

                        System.out.println("se agregaría una tarea");

                    }

                break;

                case 2:

                    System.out.println("Ingrese la tarea a eliminar");
                    entrada = scanner.next();
                    pendientes.eliminarTarea(entrada);
                
                break;

                case 3:
                
                break;

                case 4:
                
                break;

                case 0:
                
                break;
            }
            System.out.println("Las tareas son:");


            for (String puntero : pendientes.pendientes) {
                
                System.out.println("La tarea número " + (pendientes.pendientes.indexOf(puntero) + 1) + " es: " + puntero);
    
            }
        
            


        }while(accion != 0);

        

        





    }
}
