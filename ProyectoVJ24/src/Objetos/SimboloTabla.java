/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Objetos;

/**
 *
 * @author jeach
 */
public class SimboloTabla {

    public String getIdentificador() {
        return Identificador;
    }

    public void setIdentificador(String Identificador) {
        this.Identificador = Identificador;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public String getValor() {
        return Valor;
    }

    public void setValor(String Valor) {
        this.Valor = Valor;
    }

    public String getEntorno() {
        return Entorno;
    }

    public void setEntorno(String Entorno) {
        this.Entorno = Entorno;
    }

    public String getFila() {
        return fila;
    }

    public void setFila(String fila) {
        this.fila = fila;
    }

    public String getColumna() {
        return Columna;
    }

    public void setColumna(String Columna) {
        this.Columna = Columna;
    }
    String Identificador;
    String Tipo;
    String Valor;
    String Entorno;
    String fila;
    String Columna;

    public SimboloTabla(String Identificador, String Tipo, Instrucciones c,String Entorno, int fila, int Columna) {
        this.Identificador = Identificador;
        this.Tipo = Tipo;
        this.Valor = c.tipo.toString();
        this.Entorno = Entorno;
        this.fila = String.valueOf(fila);
        this.Columna = String.valueOf(Columna);
    }
    
    
            
}
