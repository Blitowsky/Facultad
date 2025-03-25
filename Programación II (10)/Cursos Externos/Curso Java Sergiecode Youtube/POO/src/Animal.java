public class Animal {

    String nombre;
    int edad;
    static int contadorAnimales = 0;

    public Animal(String nombre, int edad){

        this.nombre = nombre;
        this.edad = edad; 
        contadorAnimales++;

    }

    public String doSonido(){

    return "Sonido genérico";

    }

    public static int getContAnimales(){

        return contadorAnimales;

    }

}
