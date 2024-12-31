public class App {
    public static void main(String[] args) throws Exception {
        String texto = "Sape loquitaaa";

        System.out.println(texto);

        int longitud = texto.length();
        System.out.println(longitud);

        char caracter = texto.charAt(5);
        System.out.println(caracter);

        String subCadena = texto.substring(0, 5);
        System.out.println(subCadena);

        String minuscula = texto.toLowerCase(); //pasa todo a minúscula

        String mayuscula = texto.toUpperCase(); //pasa todo a mayúscula

        int indice = texto.indexOf("sape"); //indica el índice de la cadena pasada

        String reemplazado = texto.replace("sape","loquita"); // reemplaza una cadena por la otra

        boolean contiene = texto.contains("loquita"); // indica si contiene la cadena o no (True or False)

        String sinEspacios = texto.trim(); // saca los espacios

        //para ver todos los métodos: "texto."
    }
}
