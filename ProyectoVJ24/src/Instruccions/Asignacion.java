/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Instruccions;

import Errores.Errores;
import Objetos.*;

/**
 *
 * @author jeach
 */
public class Asignacion extends Instrucciones {
    private String Mutabilidad;
    private String id;
    private Instrucciones exp;

    public Asignacion(String id, Instrucciones exp, int linea, int col) {
        super(new Tipo(tipoDato.VOID), linea, col);
        this.id = id;
        this.exp = exp;
    }

    @Override
    public Object interpretar(Arbol arbol, tablaSimbolos tabla) {
        //variable exista
        var variable = tabla.getVariable(id);
        System.out.println(variable);
        if (variable == null) {
            return new Errores("SEMANTICO", "Variable no exitente",
                    this.linea, this.col);
        }

        // interpretar el nuevo valor a asignar
        var newValor = this.exp.interpretar(arbol, tabla);
        if (newValor instanceof Errores) {
            return newValor;
        }

        //validar tipos
        if (variable.getTipo().getTipo() != this.exp.tipo.getTipo()) {
            return new Errores("SEMANTICO", "Tipos erroneos en asignacion",
                    this.linea, this.col);
        }
        //this.tipo.setTipo(variable.getTipo().getTipo());
        variable.setValor(newValor);
        return null;
    }
}
