public class Perro extends Animal{



    public Perro(String nombre, int edad){

        super(nombre, edad);
    }

    //Con el decorador Override podemos sobreescribir un método|
    @Override
    public String doSonido(){

        return "guau";
    }



  

}
