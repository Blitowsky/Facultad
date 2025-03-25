public class Persona {

    //Atributos de clase (Estados y características de un objeto)
    private String nombre;
    private String apellido;
    private int edad;

    // Constructor

    public Persona(String nombre, String apellido, int edad){

        this.nombre = nombre;
        this.apellido = apellido;
        this.edad = edad;

    }
   

    //Métodos (comportamientos de un objeto)

    public String darNombreCompleto(){

        return apellido + ", " + nombre;

    }
    
    public String enviarSaludo(String saludado){

        return "Hola " + saludado;

    }

    public int getEdad(){

        return edad;

    }


    public String getNombre() {
        return nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }


    public void setEdad(int edad) {
        this.edad = edad;
    }

   
}
