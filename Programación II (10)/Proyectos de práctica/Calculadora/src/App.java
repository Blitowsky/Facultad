import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {

        int operacion;
        int numero1;
        int numero2;
        Scanner scanner = new Scanner(System.in);


        do{

            
            System.out.println("Operaciones disponibles: \n 1: Suma \n 2: Resta \n 3: Multiplicación \n 4: División \n 0: Cerrar calculadora");

            System.out.println("Ingrese la operación");
            operacion = scanner.nextInt();
        
            
            if(operacion == 0){

                System.out.println("Cerrando calculadora...");

            }else{

                System.out.println("Ingrese el primer número");
                numero1 = scanner.nextInt();

                System.out.println("Ingrese el segundo número");
                numero2 = scanner.nextInt();

                Calculadora calcu = new Calculadora(numero1,numero2);


                calcu.setN1(numero1);
                calcu.setN2(numero2);

                if(numero2 == 0){

                    try{
    
                        calcu.resu(operacion);
    
                    } catch(Exception divByZero) {
    
                        System.out.println("No seas culiao amigo, no podés dividir por cero");
                    } 
                    
                }else{

                    calcu.resu(operacion);
                    System.out.println("El resultado de la operación " + calcu.getN1() + calcu.getSigno() + calcu.getN2() + " es: " + calcu.getResultado());

                }


            }

        }while(operacion != 0);
        
        

    }
}
