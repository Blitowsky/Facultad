package main;

import classes.Clientes;
import classes.Efectivo;
import classes.MayoristaAlimentos;
import classes.MetodosDePago;
import classes.Productos;
import classes.Tarjeta;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */


/**
 *
 * @author estudiante
 */
public class main {
     public static void main(String[] args) {
         
         
         
         System.out.println(" ");
         System.out.println("---------------------------------------------------------------------------------");
         System.out.println(" ");
         
         Productos producto1 = new Productos(252, "emp", "Coca-Cola", 10, "buena");
         Clientes cliente1 = new Clientes("Juan,", "Perez,", 31," frecuente ", true, 254, 1200.0,producto1);
         System.out.println(cliente1);
         producto1.usos(cliente1);
         Efectivo efectivo1 = new Efectivo(3980.98);
         System.out.println(efectivo1);
         MetodosDePago metodosDePago = new MetodosDePago();
         metodosDePago.esFiscoOVirtual(2);
         System.out.println("Fisico: " + metodosDePago.fisico +  " Virtual: " + metodosDePago.virtual);
         
         System.out.println(" ");
         System.out.println("---------------------------------------------------------------------------------");
         System.out.println(" ");
         
         Productos producto2 = new Productos(989, "emp", "Verde Flor", 10, "buena");
         Clientes cliente2 = new Clientes ("Marta,", "Gonzales,", 50, " frecuente ", true, 984, 3535.5, producto2);
         System.out.println(cliente2);
         producto2.usos(cliente2);
         Tarjeta tarjeta1 = new Tarjeta(" ICBC", true, false, 989.0 );
         System.out.println(tarjeta1);
         metodosDePago.esFiscoOVirtual(2);
         System.out.println("Fisico: " + metodosDePago.fisico +  " Virtual: " + metodosDePago.virtual);
         
         System.out.println(" ");
         System.out.println("---------------------------------------------------------------------------------");
         System.out.println(" ");
         
         Productos producto3 = new Productos(10000, "emp", "Carnes varias", 10, "buena");
         Clientes cliente3 = new Clientes ("Pedro,", "Flores,", 20, " ---", false, 0, 0, producto3);
         System.out.println(cliente3);
         producto3.usos(cliente3);
         Tarjeta tarjeta2 = new Tarjeta(" Santander", false, true, 10000.0 );
         System.out.println(tarjeta2);
         metodosDePago.esFiscoOVirtual(1);
         System.out.println("Fisico: " + metodosDePago.fisico +  " Virtual: " + metodosDePago.virtual);
         
         System.out.println(" ");
         System.out.println("---------------------------------------------------------------------------------");
         System.out.println(" ");
         
         MayoristaAlimentos may1 = new MayoristaAlimentos();
         may1.imprimirMontoTotal();
         
         System.out.println(" ");
         System.out.println("---------------------------------------------------------------------------------");
         System.out.println(" ");
         
         System.out.println(".");
         System.out.println(".");
         System.out.println(".");
         System.out.println(".");
    }
}