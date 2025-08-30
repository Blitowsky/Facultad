import java.util.ArrayList;

public class Lista {

    public ArrayList<String> lista = new ArrayList<>();

    boolean contiene = false;




    public void agregarObjeto(String objeto){

        if (contieneElemento(objeto) == true){
            
            System.out.println("\n YA SE ENCUENTRA LA TAREA INGRESADA \n");

        }
        else{

            lista.add(objeto);
        }

    }

    public void eliminarObjeto(String objeto){

        lista.remove(objeto);


    }

    public boolean contieneElemento(String objeto){


        for (String puntero : lista) {

            if(puntero.equals(objeto)) return true;
  
        }
        return false;

    }

    public ArrayList<String> getPrueba() {
        return lista;
    }

    public String getPrueba(int indice) {
        return lista.get(indice);
    }

    public void setPrueba(ArrayList<String> prueba) {
        this.lista = prueba;
    }


    



}
