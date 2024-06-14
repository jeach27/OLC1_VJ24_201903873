/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Objetos;

/**
 *
 * @author jeach
 */
public class Simbolo {
    String Nombre;
    String tipo;
    String Valor;
    int fila;
    int columna;
    
    public Simbolo(String nombre, String tipo, String valor ,int fila,int columna) {
        this.Nombre = nombre;
        this.tipo = tipo;
        this.Valor = valor;
        this.fila = fila;
        this.columna = columna;
    }
    
    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String nombre) {
        this.Nombre = nombre;
    }
    
    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }
    
    public String getValor() {
        return Valor;
    }

    public void setValor(String valor) {
        this.Valor = valor;
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
