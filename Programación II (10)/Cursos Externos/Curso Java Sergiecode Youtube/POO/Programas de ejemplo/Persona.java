public class Persona {

    //Atributos de clase (Estados y características de un objeto)
    public String nombre;
    public String apellido;
    public int edad;
    Carrera carrera; //atribuimos una clase a otra

    // Constructor

    public Persona(String nombre, String apellido, int edad, String nombreCarrera){

        this.carrera = new Carrera();
        /*
         *  El this es usado para no considerar el parámetro pasado por la función
         * y referenciar la variable global
         *  Se usa para evitar ambigüedades y solapamientos entre variables con el mismo 
         * nombre
         */

        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;
        carrera.nombre = nombreCarrera;




    }
   

    //Métodos (comportamientos de un objeto)

    public String darNombreCompleto(){

        return apellido + ", " + nombre;

    }
    
    public String enviarSaludo(String saludado){

        return "Hola " + saludado;

    }


}
