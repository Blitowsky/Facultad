/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/GUIForms/JPanel.java to edit this template
 */
package views;

import logica.Vendedor;

/**
 *
 * @author PROGRAMAR
 */
public class lobbyVendedor extends javax.swing.JPanel {

    /**
     * Creates new form lobbyVendedor
     * @param vendedor
     */
    Vendedor vendedor = new Vendedor();
    public lobbyVendedor(Vendedor vendedor) {
        initComponents();
        this.vendedor = vendedor;
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        contentLobbyVendedor = new javax.swing.JPanel();
        contentMenu = new javax.swing.JPanel();
        labelMenu = new javax.swing.JLabel();
        contentBoton1V = new javax.swing.JPanel();
        botonPublicarVehiculo = new javax.swing.JButton();
        contentBoton2V = new javax.swing.JPanel();
        botonVerVehiculo = new javax.swing.JButton();
        contentBoton3V = new javax.swing.JPanel();
        botonVerVehiculos = new javax.swing.JButton();
        botonCerrar = new javax.swing.JButton();
        btnAgregarCliente = new javax.swing.JButton();
        btnVerClientes = new javax.swing.JButton();
        contentOpciones = new javax.swing.JPanel();

        setBackground(new java.awt.Color(134, 182, 246));
        setPreferredSize(new java.awt.Dimension(800, 500));

        contentLobbyVendedor.setBackground(new java.awt.Color(0, 51, 102));
        contentLobbyVendedor.setPreferredSize(new java.awt.Dimension(800, 500));

        contentMenu.setBackground(new java.awt.Color(25, 69, 113));

        labelMenu.setFont(new java.awt.Font("Segoe UI Symbol", 0, 36)); // NOI18N
        labelMenu.setForeground(new java.awt.Color(192, 192, 192));
        labelMenu.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        labelMenu.setText("MENÚ");

        contentBoton1V.setBackground(new java.awt.Color(0, 51, 102));

        botonPublicarVehiculo.setBackground(new java.awt.Color(0, 51, 102));
        botonPublicarVehiculo.setFont(new java.awt.Font("Segoe UI Semilight", 1, 14)); // NOI18N
        botonPublicarVehiculo.setForeground(new java.awt.Color(192, 192, 192));
        botonPublicarVehiculo.setText("PUBLICAR VEHICULO");
        botonPublicarVehiculo.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.lightGray, java.awt.Color.white, java.awt.Color.black, java.awt.Color.darkGray));
        botonPublicarVehiculo.setContentAreaFilled(false);
        botonPublicarVehiculo.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        botonPublicarVehiculo.setFocusPainted(false);
        botonPublicarVehiculo.setFocusable(false);
        botonPublicarVehiculo.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                botonPublicarVehiculoMouseClicked(evt);
            }
        });
        botonPublicarVehiculo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonPublicarVehiculoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout contentBoton1VLayout = new javax.swing.GroupLayout(contentBoton1V);
        contentBoton1V.setLayout(contentBoton1VLayout);
        contentBoton1VLayout.setHorizontalGroup(
            contentBoton1VLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(botonPublicarVehiculo, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        contentBoton1VLayout.setVerticalGroup(
            contentBoton1VLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(botonPublicarVehiculo, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 50, Short.MAX_VALUE)
        );

        contentBoton2V.setBackground(new java.awt.Color(102, 204, 255));

        botonVerVehiculo.setBackground(new java.awt.Color(134, 182, 246));
        botonVerVehiculo.setFont(new java.awt.Font("Segoe UI Black", 0, 12)); // NOI18N
        botonVerVehiculo.setForeground(new java.awt.Color(255, 255, 255));
        botonVerVehiculo.setText("ELIMINAR VEHICULO");
        botonVerVehiculo.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 255, 255)));
        botonVerVehiculo.setContentAreaFilled(false);
        botonVerVehiculo.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        botonVerVehiculo.setFocusPainted(false);
        botonVerVehiculo.setFocusable(false);
        botonVerVehiculo.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonVerVehiculoActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout contentBoton2VLayout = new javax.swing.GroupLayout(contentBoton2V);
        contentBoton2V.setLayout(contentBoton2VLayout);
        contentBoton2VLayout.setHorizontalGroup(
            contentBoton2VLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(botonVerVehiculo, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        contentBoton2VLayout.setVerticalGroup(
            contentBoton2VLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(botonVerVehiculo, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        contentBoton3V.setBackground(new java.awt.Color(0, 51, 102));

        botonVerVehiculos.setBackground(new java.awt.Color(0, 51, 102));
        botonVerVehiculos.setFont(new java.awt.Font("Segoe UI Semilight", 1, 14)); // NOI18N
        botonVerVehiculos.setForeground(new java.awt.Color(192, 192, 192));
        botonVerVehiculos.setText("VER VEHICULOS");
        botonVerVehiculos.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.lightGray, java.awt.Color.white, java.awt.Color.black, java.awt.Color.darkGray));
        botonVerVehiculos.setContentAreaFilled(false);
        botonVerVehiculos.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        botonVerVehiculos.setFocusPainted(false);
        botonVerVehiculos.setFocusable(false);
        botonVerVehiculos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonVerVehiculosActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout contentBoton3VLayout = new javax.swing.GroupLayout(contentBoton3V);
        contentBoton3V.setLayout(contentBoton3VLayout);
        contentBoton3VLayout.setHorizontalGroup(
            contentBoton3VLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(botonVerVehiculos, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
        contentBoton3VLayout.setVerticalGroup(
            contentBoton3VLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(botonVerVehiculos, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, 50, Short.MAX_VALUE)
        );

        botonCerrar.setBackground(new java.awt.Color(192, 192, 192));
        botonCerrar.setFont(new java.awt.Font("Segoe UI Semibold", 0, 12)); // NOI18N
        botonCerrar.setForeground(new java.awt.Color(0, 51, 102));
        botonCerrar.setText("CERRAR SESION");
        botonCerrar.setBorder(javax.swing.BorderFactory.createBevelBorder(javax.swing.border.BevelBorder.RAISED));
        botonCerrar.setFocusPainted(false);
        botonCerrar.setFocusable(false);
        botonCerrar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                botonCerrarActionPerformed(evt);
            }
        });

        btnAgregarCliente.setBackground(new java.awt.Color(0, 51, 102));
        btnAgregarCliente.setFont(new java.awt.Font("Segoe UI Semilight", 1, 14)); // NOI18N
        btnAgregarCliente.setForeground(new java.awt.Color(192, 192, 192));
        btnAgregarCliente.setText("AGREGAR CLIENTE");
        btnAgregarCliente.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.lightGray, java.awt.Color.white, java.awt.Color.black, java.awt.Color.darkGray));
        btnAgregarCliente.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnAgregarClienteActionPerformed(evt);
            }
        });

        btnVerClientes.setBackground(new java.awt.Color(0, 51, 102));
        btnVerClientes.setFont(new java.awt.Font("Segoe UI Semilight", 1, 14)); // NOI18N
        btnVerClientes.setForeground(new java.awt.Color(192, 192, 192));
        btnVerClientes.setText("VER CLIENTES");
        btnVerClientes.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED, java.awt.Color.lightGray, java.awt.Color.white, java.awt.Color.black, java.awt.Color.darkGray));
        btnVerClientes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnVerClientesActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout contentMenuLayout = new javax.swing.GroupLayout(contentMenu);
        contentMenu.setLayout(contentMenuLayout);
        contentMenuLayout.setHorizontalGroup(
            contentMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contentMenuLayout.createSequentialGroup()
                .addGap(67, 67, 67)
                .addComponent(botonCerrar, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(67, Short.MAX_VALUE))
            .addGroup(contentMenuLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(contentMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(labelMenu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnAgregarCliente, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(contentBoton1V, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(contentBoton3V, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnVerClientes, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        contentMenuLayout.setVerticalGroup(
            contentMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contentMenuLayout.createSequentialGroup()
                .addGap(32, 32, 32)
                .addComponent(labelMenu)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(contentBoton1V, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(contentBoton3V, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnAgregarCliente, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnVerClientes, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 127, Short.MAX_VALUE)
                .addComponent(botonCerrar, javax.swing.GroupLayout.PREFERRED_SIZE, 20, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25))
        );

        contentOpciones.setBackground(new java.awt.Color(0, 51, 102));

        javax.swing.GroupLayout contentOpcionesLayout = new javax.swing.GroupLayout(contentOpciones);
        contentOpciones.setLayout(contentOpcionesLayout);
        contentOpcionesLayout.setHorizontalGroup(
            contentOpcionesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 594, Short.MAX_VALUE)
        );
        contentOpcionesLayout.setVerticalGroup(
            contentOpcionesLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 500, Short.MAX_VALUE)
        );

        javax.swing.GroupLayout contentLobbyVendedorLayout = new javax.swing.GroupLayout(contentLobbyVendedor);
        contentLobbyVendedor.setLayout(contentLobbyVendedorLayout);
        contentLobbyVendedorLayout.setHorizontalGroup(
            contentLobbyVendedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(contentLobbyVendedorLayout.createSequentialGroup()
                .addComponent(contentMenu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(contentOpciones, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        contentLobbyVendedorLayout.setVerticalGroup(
            contentLobbyVendedorLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contentMenu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
            .addComponent(contentOpciones, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contentLobbyVendedor, javax.swing.GroupLayout.PREFERRED_SIZE, 804, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(contentLobbyVendedor, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );
    }// </editor-fold>//GEN-END:initComponents

    private void botonPublicarVehiculoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonPublicarVehiculoActionPerformed
        publicarVehiculo ventana = new publicarVehiculo(vendedor);
        ventana.setSize(560, 500);
        ventana.setLocation(0,0);
        contentOpciones.removeAll();
        contentOpciones.add(ventana);
        contentOpciones.revalidate();
        contentOpciones.repaint();
    }//GEN-LAST:event_botonPublicarVehiculoActionPerformed

    private void botonCerrarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonCerrarActionPerformed
        inicio ventana = new inicio();
        ventana.setSize(800,500);
        ventana.setLocation(0, 0);
        contentLobbyVendedor.removeAll();
        contentLobbyVendedor.add(ventana);
        contentLobbyVendedor.revalidate();
        contentLobbyVendedor.repaint();
    }//GEN-LAST:event_botonCerrarActionPerformed

    private void botonPublicarVehiculoMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_botonPublicarVehiculoMouseClicked
        
    }//GEN-LAST:event_botonPublicarVehiculoMouseClicked

    private void botonVerVehiculosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonVerVehiculosActionPerformed
        verVehiculoVendedor ventana = new verVehiculoVendedor();
        ventana.setSize(560, 500);
        ventana.setLocation(0,0);
        contentOpciones.removeAll();
        contentOpciones.add(ventana);
        contentOpciones.revalidate();
        contentOpciones.repaint();
        ventana.mostrar("Vehiculos");
    }//GEN-LAST:event_botonVerVehiculosActionPerformed

    private void botonVerVehiculoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_botonVerVehiculoActionPerformed

    }//GEN-LAST:event_botonVerVehiculoActionPerformed

    private void btnAgregarClienteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnAgregarClienteActionPerformed
        agregarCliente ventana = new agregarCliente(vendedor);
        ventana.setSize(560, 500);
        ventana.setLocation(0,0);
        contentOpciones.removeAll();
        contentOpciones.add(ventana);
        contentOpciones.revalidate();
        contentOpciones.repaint();        
        
    }//GEN-LAST:event_btnAgregarClienteActionPerformed

    private void btnVerClientesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnVerClientesActionPerformed
        verClientes ventana = new verClientes();
        ventana.setSize(560, 500);
        ventana.setLocation(0,0);
        contentOpciones.removeAll();
        contentOpciones.add(ventana);
        contentOpciones.revalidate();
        contentOpciones.repaint();
    }//GEN-LAST:event_btnVerClientesActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton botonCerrar;
    private javax.swing.JButton botonPublicarVehiculo;
    private javax.swing.JButton botonVerVehiculo;
    private javax.swing.JButton botonVerVehiculos;
    private javax.swing.JButton btnAgregarCliente;
    private javax.swing.JButton btnVerClientes;
    private javax.swing.JPanel contentBoton1V;
    private javax.swing.JPanel contentBoton2V;
    private javax.swing.JPanel contentBoton3V;
    private javax.swing.JPanel contentLobbyVendedor;
    private javax.swing.JPanel contentMenu;
    private javax.swing.JPanel contentOpciones;
    private javax.swing.JLabel labelMenu;
    // End of variables declaration//GEN-END:variables
}
