/*--------------------------------------------------
 ------------  1ra Area: Codigo de Usuario ---------
 ---------------------------------------------------*/

//------> Paquetes,importaciones
package Analizadores;
import Errores.ErroresL;
import proyecto1.Principal;
import Objetos.Token;
import java_cup.runtime.Symbol;
import javax.swing.JOptionPane;

/*----------------------------------------------------------
  ------------  2da Area: Opciones y Declaraciones ---------
  ----------------------------------------------------------*/
%%
%{
    //----> Codigo de usuario en sintaxis java
    
%}

//-------> Directivas
%cup
%class scanner
%public
%line
%char
%column
%full
%ignorecase


//------> Expresiones Regulares

digito = [0-9]
letra = [a-z]
cadena = [\"][^\"\n]+[\"]
doublee = [+-]? {digito}* [\.]? {digito}+
id = {letra}({letra}|{ digito }|_)*


LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]


comentariosimple    = "!" {InputCharacter}* {LineTerminator}?
comentarioMulti =  "<!" [^/] ~"!>"
EspaciosB = [\ \r\t\f\n]+

//------> Estados

%%

/*------------------------------------------------
  ------------  3ra Area: Reglas Lexicas ---------
  ------------------------------------------------*/

//-----> Simbolos

":"         { Token nuevo = new Token(yytext(), "DosPuntos", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" DosPuntos"); return new Symbol(sym.DosPuntos, yycolumn, yyline, yytext()); }
"="         { Token nuevo = new Token(yytext(), "Igual", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Igual"); return new Symbol(sym.Igual, yycolumn, yyline, yytext()); }
"<"         { Token nuevo = new Token(yytext(), "Menor", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" menor"); return new Symbol(sym.menor, yycolumn, yyline, yytext()); }
">"         { Token nuevo = new Token(yytext(), "Mayor", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" mayor"); return new Symbol(sym.mayor, yycolumn, yyline, yytext()); }
"-"         { Token nuevo = new Token(yytext(), "Guion", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" guion"); return new Symbol(sym.guion, yycolumn, yyline, yytext()); }
";"         { Token nuevo = new Token(yytext(), "PuntoComa", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" PuntoComa"); return new Symbol(sym.PuntoComa, yycolumn, yyline, yytext()); }
"["         { Token nuevo = new Token(yytext(), "AbreCorchete", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" AbreC"); return new Symbol(sym.AbreC, yycolumn, yyline, yytext()); }
"]"         { Token nuevo = new Token(yytext(), "CierrraCorchete", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" CierraC"); return new Symbol(sym.CierraC, yycolumn, yyline, yytext()); }
"@"         { Token nuevo = new Token(yytext(), "Arroba", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" arroba"); return new Symbol(sym.arroba, yycolumn, yyline, yytext()); }
","         { Token nuevo = new Token(yytext(), "Coma", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Coma"); return new Symbol(sym.Coma, yycolumn, yyline, yytext()); }
"("         { Token nuevo = new Token(yytext(), "AbreParentesis", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" AbreP"); return new Symbol(sym.AbreP, yycolumn, yyline, yytext()); }
")"         { Token nuevo = new Token(yytext(), "CierraParentesis", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" CierraP"); return new Symbol(sym.CierraP, yycolumn, yyline, yytext()); }
"\""         { Token nuevo = new Token(yytext(), "Comillas", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Comillas"); return new Symbol(sym.Comillas, yycolumn, yyline, yytext()); }
 
//-----> Palabras reservadas

"Program"       { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Program"); return new Symbol(sym.Program, yycolumn, yyline, yytext()); }
"End Program"   { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" End Program"); return new Symbol(sym.endProgram, yycolumn, yyline, yytext()); }
"Var"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" var"); return new Symbol(sym.var, yycolumn, yyline, yytext()); }
"End"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" end"); return new Symbol(sym.end, yycolumn, yyline, yytext()); }
"Double"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" doubleee"); return new Symbol(sym.doubleee, yycolumn, yyline, yytext()); }
"Char"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" charr"); return new Symbol(sym.charr, yycolumn, yyline, yytext()); }
"Arr"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" arr"); return new Symbol(sym.arr, yycolumn, yyline, yytext()); }
"SUM"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" SUM"); return new Symbol(sym.SUM, yycolumn, yyline, yytext()); }
"RES"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" RES"); return new Symbol(sym.RES, yycolumn, yyline, yytext()); }
"MUL"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" MUL"); return new Symbol(sym.MUL, yycolumn, yyline, yytext()); }
"DIV"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" DIV"); return new Symbol(sym.DIV, yycolumn, yyline, yytext()); }
"MOD"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" MOD"); return new Symbol(sym.MOD, yycolumn, yyline, yytext()); }
"Media"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Media"); return new Symbol(sym.Media, yycolumn, yyline, yytext()); }
"Mediana"       { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Mediana"); return new Symbol(sym.Mediana, yycolumn, yyline, yytext()); }
"Moda"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Moda"); return new Symbol(sym.Moda, yycolumn, yyline, yytext()); }
"Varianza"      { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Varianza"); return new Symbol(sym.varianza, yycolumn, yyline, yytext()); }
"Max"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" MAX"); return new Symbol(sym.max, yycolumn, yyline, yytext()); }
"Min"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" MIN"); return new Symbol(sym.min, yycolumn, yyline, yytext()); }
"Console"       { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Console"); return new Symbol(sym.Console, yycolumn, yyline, yytext()); }
"Print"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" print"); return new Symbol(sym.print, yycolumn, yyline, yytext()); }
"Column"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" column"); return new Symbol(sym.column, yycolumn, yyline, yytext()); }
"EXEC"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" EXEC"); return new Symbol(sym.exec, yycolumn, yyline, yytext()); }
"graphBar"      { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" graphBar"); return new Symbol(sym.graphBar, yycolumn, yyline, yytext()); }
"graphPie"      { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" graphPie"); return new Symbol(sym.graphPie, yycolumn, yyline, yytext()); }
"graphLine"     { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" graphLine"); return new Symbol(sym.graphLine, yycolumn, yyline, yytext()); }
"Histogram"     { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Histogram"); return new Symbol(sym.Histogram, yycolumn, yyline, yytext()); }
"values"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" values"); return new Symbol(sym.values, yycolumn, yyline, yytext()); }
"label"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" label"); return new Symbol(sym.label, yycolumn, yyline, yytext()); }
"Titulo"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Titulo"); return new Symbol(sym.titulo, yycolumn, yyline, yytext()); }
"ejeX"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" ejeX"); return new Symbol(sym.ejeX, yycolumn, yyline, yytext()); }
"ejeY"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" ejeY"); return new Symbol(sym.ejeY, yycolumn, yyline, yytext()); }
"tituloX"       { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" tituloX"); return new Symbol(sym.tituloX, yycolumn, yyline, yytext()); }
"tituloY"       { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" tituloY"); return new Symbol(sym.tituloY, yycolumn, yyline, yytext()); }


//-------> Simbolos ER

{cadena}     { Token nuevo = new Token(yytext(), "Cadena", yyline,yycolumn);
               Principal.ListaTokens.add(nuevo);
               System.out.println("Reconocio "+yytext()+" cadena"); return new Symbol(sym.cadena, yycolumn, yyline, yytext()); }
{doublee}    { Token nuevo = new Token(yytext(), "Doublee", yyline,yycolumn);
               Principal.ListaTokens.add(nuevo);
               System.out.println("Reconocio "+yytext()+" doublee"); return new Symbol(sym.doublee, yycolumn, yyline, yytext()); }
{id}         { Token nuevo = new Token(yytext(), "Identificador", yyline,yycolumn);
               Principal.ListaTokens.add(nuevo);
               System.out.println("Reconocio "+yytext()+" id"); return new Symbol(sym.id, yycolumn, yyline, yytext()); }

//------> Espacios
{comentariosimple}     {Token nuevo = new Token(yytext(), "Comentario Simple", yyline,yycolumn);
                        Principal.ListaTokens.add(nuevo);
                        System.out.println("Comentario: "+yytext()); }
{comentarioMulti}      {Token nuevo = new Token(yytext(), "Comentario Multi", yyline,yycolumn);
                        Principal.ListaTokens.add(nuevo);
                        System.out.println("Comentario: "+yytext()); }
{EspaciosB}             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { ErroresL err = new ErroresL("Lexico",yytext(), yyline, yycolumn); 
                          Principal.ListaErrores.add(err);
                          err.SendError();}


