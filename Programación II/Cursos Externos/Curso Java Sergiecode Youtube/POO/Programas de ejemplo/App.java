public class App {
    public static void main(String[] args) throws Exception {

        Persona persona1 = new Persona("Elena","Salinas",0,"Comerciante"); 

        /* A partir de este constuctor, ahorramos colocar los atributos de esta forma
         * 
         *  persona1.nombre = "Elena";
         *  persona1.apellido = "Salinas";
         *  persona1.edad = 82;
         * 
         */
       

        Carrera carrera1 = new Carrera("Musica", 5, false);

        persona1.carrera = carrera1;

  

        System.out.println(persona1.darNombreCompleto() + ", " + persona1.edad);


    }
}
