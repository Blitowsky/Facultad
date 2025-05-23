/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package views;

import logica.Vendedor;

/**
 *
 * @author Facultad
 */
public class agregarCamionetaViejo extends javax.swing.JPanel {

    Vendedor vendedor = new Vendedor();
    /**
     * Creates new form agregarAuto
     * @param vendedor1
     */
    public agregarCamionetaViejo(Vendedor vendedor1) {
        initComponents();
        this.vendedor = vendedor1;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        contentCamioneta = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        txtModelo = new javax.swing.JTextField();
        txtColor = new javax.swing.JTextField();
        intKm = new javax.swing.JTextField();
        intPotencia = new javax.swing.JTextField();
        intPrecio = new javax.swing.JTextField();
        ssMarca = new javax.swing.JComboBox<>();
        botonNuevo = new javax.swing.JRadioButton();
        botonUsado = new javax.swing.JRadioButton();
        botonLimpiar = new javax.swing.JButton();
        botonAgregar = new javax.swing.JButton();
        botonVolver = new javax.swing.JButton();
        jLabel9 = new javax.swing.JLabel();
        txtTrac = new javax.swing.JTextField();

        contentCamioneta.setBackground(new java.awt.Color(134, 182, 246));
        contentCamioneta.setPreferredSize(new java.awt.Dimension(560, 500));

        jLabel1.setText("Marca");

        jLabel2.setText("Modelo");

        jLabel3.setText("Color");

        jLabel4.setText("Kilometros");

        jLabel5.setText("Condición");

        jLabel6.setText("Potencia");

        jLabel8.setText("Precio");

        txtColor.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtColorActionPerformed(evt);
            }
        });

        ssMarca.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "...", "Chevrolet", "Ford", "Nissan", "Toyota", "Volkswagen" }));
        ssMarca.setToolTipText("Seleccione una Marca");
        ssMarca.setDoubleBuffered(true);
        ssMarca.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ssMarcaActionPerformed(evt);
            }
        });

        botonNuevo.setBackground(new java.awt.Color(134, 182, 246));
        buttonGroup1.add(botonNuevo);
        botonNuevo.setText("Nuevo");
        botonNuevo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonNuevoActionPerformed(evt);
            }
        });

        botonUsado.setBackground(new java.awt.Color(134, 182, 246));
        buttonGroup1.add(botonUsado);
        botonUsado.setText("Usado");

        botonLimpiar.setText("Limpiar");
        botonLimpiar.setFocusPainted(false);
        botonLimpiar.setFocusable(false);
        botonLimpiar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonLimpiarActionPerformed(evt);
            }
        });

        botonAgregar.setText("Agregar");
        botonAgregar.setFocusPainted(false);
        botonAgregar.setFocusable(false);
        botonAgregar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonAgregarActionPerformed(evt);
            }
        });

        botonVolver.setText("Volver");
        botonVolver.setFocusPainted(false);
        botonVolver.setFocusable(false);
        botonVolver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonVolverActionPerformed(evt);
            }
        });

        jLabel9.setText("Tipo de Traccion ");

        javax.swing.GroupLayout contentCamionetaLayout = new javax.swing.GroupLayout(contentCamioneta);
        contentCamioneta.setLayout(contentCamionetaLayout);
        contentCamionetaLayout.setHorizontalGroup(
            contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contentCamionetaLayout.createSequentialGroup()
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(contentCamionetaLayout.createSequentialGroup()
                        .addGap(53, 53, 53)
                        .addComponent(botonLimpiar, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(18, 18, 18)
                        .addComponent(botonAgregar, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(contentCamionetaLayout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(botonVolver))
                    .addGroup(contentCamionetaLayout.createSequentialGroup()
                        .addGap(113, 113, 113)
                        .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(contentCamionetaLayout.createSequentialGroup()
                                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel1)
                                    .addComponent(jLabel2)
                                    .addComponent(jLabel3)
                                    .addComponent(jLabel4)
                                    .addComponent(jLabel5))
                                .addGap(43, 43, 43)
                                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addComponent(ssMarca, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(txtModelo)
                                        .addComponent(txtColor)
                                        .addComponent(intKm, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(botonNuevo)
                                    .addComponent(botonUsado)))
                            .addGroup(contentCamionetaLayout.createSequentialGroup()
                                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel6)
                                    .addComponent(jLabel8)
                                    .addComponent(jLabel9))
                                .addGap(54, 54, 54)
                                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(intPotencia, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(intPrecio, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(txtTrac, javax.swing.GroupLayout.PREFERRED_SIZE, 220, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                .addContainerGap(81, Short.MAX_VALUE))
        );
        contentCamionetaLayout.setVerticalGroup(
            contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contentCamionetaLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(botonVolver)
                .addGap(54, 54, 54)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(ssMarca, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtModelo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtColor, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(intKm, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(botonNuevo))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(botonUsado)
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(intPotencia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel8)
                    .addComponent(intPrecio, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel9)
                    .addComponent(txtTrac, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 29, Short.MAX_VALUE)
                .addGroup(contentCamionetaLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(botonLimpiar)
                    .addComponent(botonAgregar))
                .addGap(37, 37, 37))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(contentCamioneta, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contentCamioneta, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void ssMarcaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ssMarcaActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ssMarcaActionPerformed

    private void txtColorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtColorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtColorActionPerformed

    private void botonNuevoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonNuevoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_botonNuevoActionPerformed

    private void botonLimpiarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonLimpiarActionPerformed
        txtModelo.setText("");
        ssMarca.setSelectedIndex(0);
        txtColor.setText("");
        intKm.setText("");
        intPotencia.setText("");
        intPrecio.setText("");
        txtTrac.setText("");
    }//GEN-LAST:event_botonLimpiarActionPerformed

    private void botonVolverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonVolverActionPerformed
        publicarVehiculo ventana = new publicarVehiculo(vendedor);
        ventana.setSize(560,500);
        ventana.setLocation(0,0);
        contentCamioneta.removeAll();
        contentCamioneta.add(ventana);
        contentCamioneta.revalidate();
        contentCamioneta.repaint();
    }//GEN-LAST:event_botonVolverActionPerformed

    private void botonAgregarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonAgregarActionPerformed
        try {
            String modelo = String.valueOf(txtModelo.getText());
            String marca = String.valueOf(ssMarca.getSelectedItem());
            String color = txtColor.getText();
            int kilometros = Integer.parseInt(intKm.getText());
            
            String cond;
            if(botonNuevo.isSelected() & kilometros == 0) {
                cond = "Nuevo";
            } else if (botonUsado.isSelected() & kilometros > 0){
                cond = "Usado";
            } else {
                cond = "";
            }
            double potenciaMotor = Double.parseDouble(((intPotencia.getText())));
            double precio = Double.parseDouble(intPrecio.getText());
            String traccion = txtTrac.getText();            
            if(kilometros < 0 || potenciaMotor < 0 || precio < 0) {
                throw new IllegalArgumentException();
            }
            
            vendedor.agregarCamioneta(modelo, marca, color, kilometros, cond, potenciaMotor, precio, traccion, vendedor.getIdVendedor());        
        } catch (NumberFormatException e){
            
            System.out.println(e.getMessage());
            System.out.println("Valores numéricos incorrectos");
        } catch(IllegalArgumentException e){
            e.getMessage();
            System.out.println("Valores menores a cero");
        } 
    }//GEN-LAST:event_botonAgregarActionPerformed

    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton botonAgregar;
    private javax.swing.JButton botonLimpiar;
    private javax.swing.JRadioButton botonNuevo;
    private javax.swing.JRadioButton botonUsado;
    private javax.swing.JButton botonVolver;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JPanel contentCamioneta;
    private javax.swing.JTextField intKm;
    private javax.swing.JTextField intPotencia;
    private javax.swing.JTextField intPrecio;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JComboBox<String> ssMarca;
    private javax.swing.JTextField txtColor;
    private javax.swing.JTextField txtModelo;
    private javax.swing.JTextField txtTrac;
    // End of variables declaration//GEN-END:variables
}
