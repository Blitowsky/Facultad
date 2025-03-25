public class Tarea {

    private String nombre;
    private String descripcion;
    private boolean completada;

    public Tarea(String nombre, String descripcion){

        this.nombre = nombre;
        this.descripcion = descripcion;

    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public boolean isCompletada() {
        return completada;
    }
    
    public void setCompletada(boolean completada) {
        this.completada = completada;
    }

    public void mostrarTarea(){

        System.out.println("Nombre: " + getNombre() + ", " + "descripción: " + getDescripcion());

        if(isCompletada()){
            System.out.println("La tarea ha sido completada");
        }else System.out.println("La tarea está incompleta");

    }

    public void completarTarea(){
        this.completada = true;
    }



}
