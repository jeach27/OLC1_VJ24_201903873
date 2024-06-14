/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Analizadores;

/**
 *
 * @author jeach
 */
public class Generador {

    
    public static void main(String[] args) {
        generarCompilador();
    }
    
    
    private static void generarCompilador() {
        
        try {
            String ruta = "src/Analizadores/";
            String Flex[] = {ruta + "Lexico.jflex", "-d", ruta};
            jflex.Main.generate(Flex);
            String Cup[] = {"-destdir", ruta, "-parser", "parser", ruta + "Sintactico.cup"};
            java_cup.Main.main(Cup);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    
}
