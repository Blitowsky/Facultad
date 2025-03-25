public class Calculadora {

    private int n1;
    private int n2;
    private double resultado;
    private String signo;

    public Calculadora(int n1, int n2){

        this.n1 = n1;
        this.n2 = n2;

    }

    public void suma(){

        resultado = n1 + n2;
        signo = " + ";

    }

    public void resta(){

        resultado = n1 - n2;
        signo = " - ";
    }

    public void prod(){

        resultado = n1 * n2;
        signo = " x ";


    }

    public void div(){

        resultado = n1 / n2;  
        signo = " / ";
      

    }

    public double resu(int operacion){

        switch (operacion) {
            case 1:

                suma();
                break;

            case 2:
                resta();
                break;

            case 3:
                prod();
                break;

            case 4:
                div();
                break;
        }
        return resultado;

    }

    public int getN1() {
        return n1;
    }

    public void setN1(int n1) {
        this.n1 = n1;
    }

    public int getN2() {
        return n2;
    }

    public void setN2(int n2) {
        this.n2 = n2;
    }
    public double getResultado(){
        return resultado;
    }
    public String getSigno(){
        return signo;
    }


    



}
