import java.util.ArrayList;
import java.util.Scanner;

public class Menu {

    private final ListaTareas lista;
    private int opcion;
    private boolean salir;

    Scanner scanner = new Scanner(System.in).useDelimiter("\n");

   



    public Menu(){

        this.lista = new ListaTareas();

    }



    public String ingresoUsuario(String texto){

        System.out.println(texto);
        return scanner.next();

    }

    public void mostrarMenu(){

        do{
            System.out.println(" 1 : Crear tarea \n 2 : Mostrar lista de tareas \n 3 : Mostrar cantidad de tareas actuales");
            System.out.println(" 4 : Buscar tarea \n 5 : Verificar si existe una tarea \n 6 : Consultar el índice de la primera aparición de una tarea");
            System.out.println(" 7 : Consultar el índice de la última aparición de una tarea \n 8 : Eliminar tarea");
            System.out.println(" 9 : Vaciar lista \n10 : Verificar si la lista está vacía \n11 : Clonar la lista");
    
            eleccionOpciones();

        } while(salir == false);

        
    }

    public void eleccionOpciones(){

        opcion = scanner.nextInt();

        switch (opcion) {

            case 0:

                salir = true;
                break;

            case 1://agrega tarea

                crearTarea();
                break;

            case 2://muestra las tareas en consola

                mostrarTareas();
                break;

            case 3://mediante size() muestra la cantidad de tareas

                tamañoLista();
                break;

            case 4://busca la tarea ingresada y devuelve su información

                buscarTarea();
                break;

            case 5://mediente contains() verifica que exista la tarea ingresada

                contieneTarea();
                break;

            case 6://obtiene el índice de la primera aparición de la tarea ingresada

                primeraAparición(); 
                break;
        
            case 7://obtiene el índice de la última aparición de la tarea ingresada

                ultimaAparicion();
                break;

            case 8:

                eliminarTarea();
                break;

            case 9:

                vaciarLista();
                break;

            case 10:

                estaVacia();
                break;

            case 11:

                clonarLista();
                break;

            default:

                System.out.println("Ingrese un número dentro de las opciones");
                break;
        }

    }

    public void crearTarea(){

        Tarea tarea1 = new Tarea("Cuchillo", "Afilar cuchillo");
        Tarea tarea2 = new Tarea("speed", "Cafeina pibeeee");
        Tarea tarea3 = new Tarea("esmeril", "afilá el cuchillo con esto");
        lista.agregarTarea(tarea1);
        lista.agregarTarea(tarea2);
        lista.agregarTarea(tarea3);

        String descripcion;

        System.out.println("Ingrese el nombre de la tarea: ");
        String nombre = scanner.next(); //por alguna razón está consumiendo el enter posterior a elegir la opción del menú

        System.out.println("Ingrese la descrpicion de la tarea: ");
        descripcion = scanner.next();


        Tarea tarea = new Tarea(nombre, descripcion);
        lista.agregarTarea(tarea);

    }

    public void mostrarTareas(){

        lista.mostrarTareas();

    }

    public void tamañoLista(){

        System.out.println("Actualmente posee " + lista.tamañoLista() + " tareas");

    }

    public void buscarTarea(){

        String nombre = ingresoUsuario("Ingrese la tarea buscada");
        if (lista.obtenerTarea(nombre) != null) {
            
            Tarea tarea = lista.obtenerTarea(nombre);
            tarea.mostrarTarea();

        } else System.out.println("No se encontró la tarea ingresada");

    }

    public void completarTarea(){

        String nombre = ingresoUsuario("Ingrese la tarea a completar");

        Tarea tarea = lista.obtenerTarea(nombre);

        tarea.setCompletada(true);

    }

    public void contieneTarea(){

        String nombre = ingresoUsuario("Ingrese el nombre de la tarea a consultar");
        Tarea tarea = lista.obtenerTarea(nombre);

        if(lista.contieneTarea(tarea)){

            System.out.println("La lista contiene a la tarea consultada");

        } else System.out.println("La lista no contiene a la tarea consultada");

    }   

    public void primeraAparición(){

        String nombre = ingresoUsuario("Ingrese la tarea para consultar el índice de su primera aparición");

        Tarea tarea = lista.obtenerTarea(nombre);

        System.out.println("El índice de la primera aparición es: " + (lista.consultarPrimerIndice(tarea) + 1));
    }   

    public void ultimaAparicion(){

        String nombre = ingresoUsuario("Ingrese la tarea para consultar el índice de su última aparición");

        Tarea tarea = lista.obtenerTarea(nombre);

        System.out.println("El índice de la última aparición es: " + (lista.consultarUltimoIndice(tarea) + 1));
    
    }  

    public void eliminarTarea(){

        String nombre = ingresoUsuario("Ingrese la tarea a eliminar");

        Tarea tarea = lista.obtenerTarea(nombre);

        lista.eliminarTarea(tarea);

    }

    public void vaciarLista(){

        lista.vaciarLista();

    }

    public void estaVacia(){

        if(lista.listaVacia()){

            System.out.println("La lista está vacía");

        } else System.out.println("La lista no está vacía");

    }

    public void clonarLista(){

        ArrayList<Tarea> listaClonada = lista.clonarLista();

        System.out.println("Su lista ha sido clonada");

        for (Tarea puntero : listaClonada) {
            
            puntero.mostrarTarea();

        }


    }

    public boolean getSalir() {
        return salir;
    }
    
    
    



}
