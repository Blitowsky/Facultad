public class App {
    public static void main(String[] args) throws Exception {

        Animal animal = new Animal("Bicharraco", 5);
        Perro perro = new Perro("Grana", 12);
        Gato gato = new Gato("Petra", 1);

        System.out.println(animal.nombre);
        System.out.println(animal.doSonido());

        System.out.println(perro.nombre);
        System.out.println(perro.doSonido());

        System.out.println(gato.nombre);
        System.out.println(gato.doSonido());

    }
}
