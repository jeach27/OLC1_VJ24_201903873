/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Objetos;

/**
 *
 * @author jeach
 */
public abstract class Instrucciones {
 
    public Tipo tipo;
    public int linea;
    public int col;

    public Instrucciones(Tipo tipo, int linea, int col) {
        this.tipo = tipo;
        this.linea = linea;
        this.col = col;
    }
    
    public abstract Object interpretar(Arbol arbol, tablaSimbolos tabla);
}
