/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Objetos;



import Errores.Errores;
import java.util.LinkedList;
/**
 *
 * @author jeach
 */
public class Arbol {
    private LinkedList<Instrucciones> instrucciones;
    private String consola;
    public LinkedList<Errores> errores;

    public Arbol(LinkedList<Instrucciones> instrucciones) {
        this.instrucciones = instrucciones;
        this.consola = "";
        this.errores = new LinkedList<>();
    }

    public LinkedList<Instrucciones> getInstrucciones() {
        return instrucciones;
    }

    public void setInstrucciones(LinkedList<Instrucciones> instrucciones) {
        this.instrucciones = instrucciones;
    }

    public String getConsola() {
        return consola;
    }

    public void setConsola(String consola) {
        this.consola = consola;
    }

    public LinkedList<Errores> getErrores() {
        return errores;
    }

    public void setErrores(LinkedList<Errores> errores) {
        this.errores = errores;
    }

    public void Print(String valor) {
        this.consola += valor + "\n";
    }
}
