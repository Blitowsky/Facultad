/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JFrame.java to edit this template
 */
package views;
import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.util.List;
import logica.Gerente;
import logica.Vendedor;
/**
 *
 * @author guada
 */
public class VendedoresAsociados extends javax.swing.JFrame {

    Gerente gerente = new Gerente();
    
    public VendedoresAsociados(int idCliente) {
        setTitle("Vendedores Asociados al Cliente");
        setSize(500, 300);
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        initComponents();
        mostrar(idCliente);
    }

    public void mostrar(int idCliente) {
        List<String[]> vendedores = gerente.obtenerVendedoresPorCliente(idCliente);

        DefaultTableModel model = new DefaultTableModel(){

            @Override
            public boolean isCellEditable(int row, int column) {
                return false;
            }
        };
        visor.getTableHeader().setResizingAllowed(false);
        
        
        
        model.addColumn("ID");
        model.addColumn("Nombre");
        model.addColumn("Apellido");
        model.addColumn("Dni");
        model.addColumn("Relacion");


        for (String[] vendedor : vendedores) {
            model.addRow(vendedor);
        }

        visor.setModel(model);

    }


    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        visor = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setResizable(false);

        visor.setBackground(new java.awt.Color(192, 192, 192));
        visor.setFont(new java.awt.Font("Segoe UI Semilight", 0, 12)); // NOI18N
        visor.setForeground(new java.awt.Color(0, 51, 102));
        visor.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "Title 1", "Title 2", "Title 3", "Title 4"
            }
        ));
        jScrollPane1.setViewportView(visor);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jScrollPane1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable visor;
    // End of variables declaration//GEN-END:variables
}
