public class Gato extends /* esto implica que hereda de la clase a la derecha*/ Animal {

    //Al heredar de otra clase, requiere un constructor para mandar la información de la superclase
    //esta info es obligatoria

    public Gato(String nombre, int edad){

        // con la palabra super asignamos la información heredada de la superclase
        super(nombre,edad);

    }

    @Override
    public String doSonido(){

        return "miau";

    }


}
