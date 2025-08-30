/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Tareas;


import java.util.ArrayList;
import java.util.InputMismatchException;
import java.util.Scanner;

/**
 *
 * @author root
 * 
 */
public class Menu {

    private final ListaTareas lista;

    //instancia el scanner
    Scanner leer = new Scanner(System.in);
    

    //declara la variable salir
    private boolean salir = true;

    //es el constructor de Menú, le asigna una lista para que pueda operar correctamente
    public Menu() {
        this.lista = new ListaTareas();
    }

    public void crearTareas() {
        /// Instancia el objeto de tarea, construye una clase Tarea para cada objeto
        Tarea tarea1 = new Tarea("Historia", "Segunda guerra mundial");
        Tarea tarea2 = new Tarea("Arte Moderno", "Pinturas");
        Tarea tarea3 = new Tarea("Programación Java", "Terminar Proyecto");
        // Guarda en la lista las clases Tarea antes definidas
        lista.agregarTarea(tarea1);
        lista.agregarTarea(tarea2);
        lista.agregarTarea(tarea3);
    }

    public void mostrarMenu() {
        
        //llama al método que permite construir una Tarea por consola, pidiendo y colocando
        //los atributos en el constructor de Tarea
        crearTareas();

        //bucle para repetir hasta querer salir
        while (this.salir) {


            try {

            //muestra por pantalla las opciones
            System.out.println("Ingrese el numero de la operacion que quiera realizar: ");
            System.out.println("1. Añadir una nueva tarea. ");
            System.out.println("2. Mostrar tareas.");
            System.out.println("3. Obtener una tarea especifica por su nombre.");
            System.out.println("4. Completar Tarea.");
            System.out.println("5. Verificar si una tarea esta en la lista.");
            System.out.println("6. Obtener el indice de la primera y ultima aparicion.");
            System.out.println("7. Eliminar tarea.");
            System.out.println("8. Borrar todas las tareas.");
            System.out.println("9. Verificar si la lista esta vacia.");
            System.out.println("10. Clonar lista.");
            System.out.println("11. Salir.");


            //esto lee la opción elegida
            int opcion;
            opcion = leer.nextInt();
            leer.nextLine();


            //llama al método inferior para elegir la acción a realizar
            seleccionarOpcion(opcion);

                //considera la excepción generada por ingresar un número inválido o un caracter no numérico
            } catch (InputMismatchException e) {
                System.out.println("Por favor ingresa un numero valido");
                leer.nextLine();
            }
            
        }

    }

    public String ingresarUsuario(String texto) {
        System.out.println(texto);
        String nombre = leer.nextLine();
        return nombre;
    }

    public void eliminarTarea() {
        String nombre = ingresarUsuario("Ingrese la tarea que desea eliminar");
        Tarea tareaAEliminar = lista.obtenerTarea(nombre);
        lista.eliminarTarea(tareaAEliminar);

    }

    public void verificarTarea() {
        String nombre = ingresarUsuario("Ingresa el nombre de la tarea que queres verificar si esta en la lista ");
        //Verificia si la tarea ingresada está en la lista de tareas
        lista.contieneTarea(lista.obtenerTarea(nombre));

    }

    public void completarTarea() {
        String nombre = ingresarUsuario("Ingrese la tarea que desea completar");
        //Instancia una tarea y busca la tarea a completar, si la encuentra se la asigna
        Tarea tarea = lista.obtenerTarea(nombre);
        //asigna true al atributo completada
        tarea.completarTarea();
    }

    public void crearTarea() {
        //Crea las variables de manera local
        String nombre;
        String descripcion;

        //Pide las variables por consola
        System.out.println("Ingrese el nombre de la tarea: ");
        nombre = leer.nextLine();
        System.out.println("Ingrese la descrpicion de la tarea: ");
        descripcion = leer.nextLine();

        //Construye la tarea y la agrega al Array
        Tarea tarea = new Tarea(nombre, descripcion);
        lista.agregarTarea(tarea);
    }

    public void seleccionarOpcion(int opcion) {
        switch (opcion) {

            case 1 -> {

                crearTarea();
                break;
            }
            case 2 -> 
            {
                lista.mostrarTareas();
                break;
            }
            case 3 -> {
                String nombre = ingresarUsuario("Ingresa el nombre de la tarea que quieres obtener ");
                
                if(lista.obtenerTarea(nombre) != null/* si nombre obtiene algo diferente a null
                implica que la lista contiene la tarea solicitada*/) { 
                     Tarea tarea = lista.obtenerTarea(nombre);
                     tarea.mostrarTarea();
                }
                break;
            }
            case 4 -> {
                completarTarea();
                break;
            }
            case 5 -> {
                verificarTarea();
                break;
            }
            case 6 -> {
                String nombre = ingresarUsuario("Ingresa el nombre de la tarea que quieres obtener su indice");
                
                
                lista.indiceTarea(lista.obtenerTarea(nombre)/* inserta la tarea con el nombre solicitado */);
                break;
            }
            case 7 -> {
                eliminarTarea();
                break;
            }
            case 8 -> {
                lista.limpiarLista();
                break;
            }
            case 9 -> {
                lista.estaVacia();
                break;
            }
            case 10 -> {
                ArrayList<Tarea> listaCopiada = lista.clonarLista();
                
                System.out.println("Su lista ha sido clonada");
                for (Tarea tarea : listaCopiada) {
                    System.out.println(tarea.getNombre());
                }
                break;
            }
            case 11 -> {
                this.salir = false;
                System.out.println("Usted ha salido del menu, muchas gracias por usar ToUncuyoList");
                break;
            } 
            default -> {
                System.out.println("Ingresa un valor que este en el rango");
                return;
            }
            

        }
    }

}
