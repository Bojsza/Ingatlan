/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package the.rea2;


import javax.swing.*;
import javax.swing.table.DefaultTableModel;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Rea2 {
    private int refszam;
    private String tipus;
    private String telepules;
    private int alapter_nm;
    private int szobak;
    private int ar;
    private String parkolo;
    private String emelet;
    private int erkely_nm;
    private int szintek;
    private int telek_nm;
    private String leiras;
    private String statusz;

    public Rea2(int refszam, String tipus, String telepules, int alapter_nm, int szobak, int ar, String parkolo, String emelet, int erkely_nm, int szintek, int telek_nm, String leiras, String statusz) {
        this.refszam = refszam;
        this.tipus = tipus;
        this.telepules = telepules;
        this.alapter_nm = alapter_nm;
        this.szobak = szobak;
        this.ar = ar;
        this.parkolo = parkolo;
        this.emelet = emelet;
        this.erkely_nm = erkely_nm;
        this.szintek = szintek;
        this.telek_nm = telek_nm;
        this.leiras = leiras;
        this.statusz = statusz;
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            Rea2 app = new Rea2(1, "haz", "Budapest", 100, 5, 2000000, "utca", "foldszint", 20, 2, 500, "nagyon szep lakas", "elado");
            app.createAndShowGUI();
        });
    }

    private void createAndShowGUI() {
        // Create and set up the window
        JFrame frame = new JFrame("Ingatlan Adatok");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        // Create buttons
        JButton uploadButton = new JButton("Feltöltés");
        JButton searchButton = new JButton("Keresés");

        // Create table with data
        JTable table = new JTable();
        DefaultTableModel model = new DefaultTableModel();
        model.addColumn("Refszám");
        model.addColumn("Típus");
        model.addColumn("Település");
        model.addColumn("Alapterület");
        model.addColumn("Szobák száma");
        model.addColumn("Ár");
        model.addColumn("Státusz");
        table.setModel(model);
        addDataToTable(model);

        // Create a panel to hold buttons
        JPanel buttonPanel = new JPanel();
        buttonPanel.add(uploadButton);
        buttonPanel.add(searchButton);

        // Add components to the frame
        frame.add(buttonPanel, BorderLayout.NORTH);
        frame.add(new JScrollPane(table), BorderLayout.CENTER);

        // Add action listener for search button
        searchButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                new SearchPage();
            }
        });

        // Display the window
        frame.pack();
        frame.setVisible(true);
    }

    private void addDataToTable(DefaultTableModel model) {
        // Add sample data to the table
        model.addRow(new Object[]{refszam, tipus, telepules, alapter_nm, szobak, ar, statusz});
    }

}