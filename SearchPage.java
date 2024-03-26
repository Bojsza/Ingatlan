/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package the.rea2;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class SearchPage {
    private JFrame frame;
    private JTextField refszamField;
    private JTextField tipusField;
    private JTextField telepulesField;
    private JTextField alapterField;
    private JTextField szobakField;
    private JTextField arField;
    private JTextField statuszField;
    private JTextField parkoloField;
    private JTextField emeletField;
    private JTextField erkelyField;
    private JTextField szintekField;
    private JTextField telekField;

    public SearchPage() {
        frame = new JFrame("Ingatlan Keresése");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        JPanel panel = new JPanel(new GridLayout(8, 2, 5, 5));

        JLabel refszamLabel = new JLabel("Refszám:");
        refszamField = new JTextField();
        JLabel tipusLabel = new JLabel("Típus:");
        tipusField = new JTextField();
        JLabel telepulesLabel = new JLabel("Település:");
        telepulesField = new JTextField();
        JLabel alapterLabel = new JLabel("Alapterület:");
        alapterField = new JTextField();
        JLabel szobakLabel = new JLabel("Szobák száma:");
        szobakField = new JTextField();
        JLabel arLabel = new JLabel("Ár:");
        arField = new JTextField();
        JLabel statuszLabel = new JLabel("Státusz:");
        statuszField = new JTextField();
        JLabel parkoloLabel = new JLabel("Parkoló:");
        parkoloField = new JTextField();
        JLabel emeletLabel = new JLabel("Emelet:");
        emeletField = new JTextField();
        JLabel erkelyLabel = new JLabel("Erkély:");
        erkelyField = new JTextField();
        JLabel szintekLabel = new JLabel("Szintek:");
        szintekField = new JTextField();
        JLabel telekLabel = new JLabel("Telek:");
        telekField = new JTextField();

        panel.add(refszamLabel);
        panel.add(refszamField);
        panel.add(tipusLabel);
        panel.add(tipusField);
        panel.add(telepulesLabel);
        panel.add(telepulesField);
        panel.add(alapterLabel);
        panel.add(alapterField);
        panel.add(szobakLabel);
        panel.add(szobakField);
        panel.add(arLabel);
        panel.add(arField);
        panel.add(statuszLabel);
        panel.add(statuszField);
        panel.add(parkoloLabel);
        panel.add(parkoloField);
        panel.add(emeletLabel);
        panel.add(emeletField);
        panel.add(erkelyLabel);
        panel.add(erkelyField);
        panel.add(szintekLabel);
        panel.add(szintekField);
        panel.add(telekLabel);
        panel.add(telekField);

        JButton searchButton = new JButton("Keresés");
        JButton homeButton = new JButton("Home");

        searchButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                // Keresés funkció
                // Implementáld a keresési logikát itt
            }
        });

        homeButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                frame.dispose();
                Rea2.main(new String[]{});
            }
        });

        panel.add(searchButton);
        panel.add(homeButton);

        frame.add(panel);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setVisible(true);
    }
}