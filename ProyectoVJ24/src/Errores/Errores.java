/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Errores;
import proyecto.Principal;
/**
 *
 * @author jeach
 */
public class Errores {
    String tipo;
    String caracter;
    int fila;
    int columna;
    
    
    public Errores(String tipo, String caracter, int fila, int columna) {
        this.tipo = tipo;
        this.caracter = caracter;
        this.fila = fila;
        this.columna = columna;
    }
    
    public void SendError(){
        Principal.Prints.add("Hubo un error de  tipo" + tipo + "No se esparaba el caracter" +
                caracter + "En la fila" + fila + "En la columna" + columna);
        System.out.println("Hubo un error de  tipo" + tipo + "No se esparaba el caracter" + 
                caracter + "En la fila" + fila + "En la columna" + columna);
        
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getCaracter() {
        return caracter;
    }

    public void setCaracter(String caracter) {
        this.caracter = caracter;
    }

    public int getFila() {
        return fila;
    }

    public void setFila(int fila) {
        this.fila = fila;
    }

    public int getColumna() {
        return columna;
    }

    public void setColumna(int columna) {
        this.columna = columna;
    }
    
}
