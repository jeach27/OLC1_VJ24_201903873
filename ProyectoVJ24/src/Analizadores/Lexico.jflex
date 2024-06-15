/*--------------------------------------------------
 ------------  1ra Area: Codigo de Usuario ---------
 ---------------------------------------------------*/

//------> Paquetes,importaciones
package Analizadores;
import Errores.Errores;
import proyecto.Principal;
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
doublee = [+-]? {digito}+ [\.] {digito}+
id = {letra}({letra}|{ digito }|_)*
enteroo = [-]? {digito}+ 
charr = [\'][^\'\n]+[\']


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
"-"         { Token nuevo = new Token(yytext(), "Resta", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Resta"); return new Symbol(sym.Resta, yycolumn, yyline, yytext()); }
";"         { Token nuevo = new Token(yytext(), "PuntoComa", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" PuntoComa"); return new Symbol(sym.PuntoComa, yycolumn, yyline, yytext()); }
"{"         { Token nuevo = new Token(yytext(), "AbreCorchete", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" AbreC"); return new Symbol(sym.AbreC, yycolumn, yyline, yytext()); }
"}"         { Token nuevo = new Token(yytext(), "CierrraCorchete", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" CierraC"); return new Symbol(sym.CierraC, yycolumn, yyline, yytext()); }
"^"         { Token nuevo = new Token(yytext(), "acentoPotencia", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" acentoPotencia"); return new Symbol(sym.acentoPotencia, yycolumn, yyline, yytext()); }
"%"         { Token nuevo = new Token(yytext(), "Porcentaje", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Porcentaje"); return new Symbol(sym.Porcentaje, yycolumn, yyline, yytext()); }
"("         { Token nuevo = new Token(yytext(), "AbreParentesis", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" AbreP"); return new Symbol(sym.AbreP, yycolumn, yyline, yytext()); }
")"         { Token nuevo = new Token(yytext(), "CierraParentesis", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" CierraP"); return new Symbol(sym.CierraP, yycolumn, yyline, yytext()); }
"&&"         { Token nuevo = new Token(yytext(), "AND", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" AND"); return new Symbol(sym.SymAND, yycolumn, yyline, yytext()); }
"||"         { Token nuevo = new Token(yytext(), "OR", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" OR"); return new Symbol(sym.SymOR, yycolumn, yyline, yytext()); }
"!"          { Token nuevo = new Token(yytext(), "NOT", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" NOT"); return new Symbol(sym.SymNOT, yycolumn, yyline, yytext()); }
"/"          { Token nuevo = new Token(yytext(), "Diagonal", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Diagonal"); return new Symbol(sym.Diagonal, yycolumn, yyline, yytext()); }
"+"          { Token nuevo = new Token(yytext(), "Suma", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Suma"); return new Symbol(sym.Suma, yycolumn, yyline, yytext()); }
"*"          { Token nuevo = new Token(yytext(), "Asterisco", yyline,yycolumn);
              Principal.ListaTokens.add(nuevo);
              System.out.println("Reconocio "+yytext()+" Asterisco"); return new Symbol(sym.Asterisco, yycolumn, yyline, yytext()); }

//-----> Palabras reservadas

"Var"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Var"); return new Symbol(sym.PRvar, yycolumn, yyline, yytext()); }
"Const"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" Const"); return new Symbol(sym.PRconst, yycolumn, yyline, yytext()); }
"Int"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" int"); return new Symbol(sym.PRint, yycolumn, yyline, yytext()); }
"Double"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" double"); return new Symbol(sym.PRdouble, yycolumn, yyline, yytext()); }
"Bool"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" bool"); return new Symbol(sym.PRbool, yycolumn, yyline, yytext()); }
"True"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" true"); return new Symbol(sym.PRtrue, yycolumn, yyline, yytext()); }
"False"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" false"); return new Symbol(sym.PRfalse, yycolumn, yyline, yytext()); }
"Char"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" char"); return new Symbol(sym.PRchar, yycolumn, yyline, yytext()); }
"String"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" string"); return new Symbol(sym.PRstring, yycolumn, yyline, yytext()); }
"If"            { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+"if"); return new Symbol(sym.PRif, yycolumn, yyline, yytext()); }
"Else"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+"else"); return new Symbol(sym.PRelse, yycolumn, yyline, yytext()); }
"Match"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" match"); return new Symbol(sym.PRmatch, yycolumn, yyline, yytext()); }
"While"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" while"); return new Symbol(sym.PRwhile, yycolumn, yyline, yytext()); }
"For"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" for"); return new Symbol(sym.PRfor, yycolumn, yyline, yytext()); }
"Do"            { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" do"); return new Symbol(sym.PRdo, yycolumn, yyline, yytext()); }
"Break"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" break"); return new Symbol(sym.PRbreak, yycolumn, yyline, yytext()); }
"Continue"      { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" continue"); return new Symbol(sym.PRcontinue, yycolumn, yyline, yytext()); }
"Return"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" return"); return new Symbol(sym.PRreturn, yycolumn, yyline, yytext()); }
"New"           { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" new"); return new Symbol(sym.PRnew, yycolumn, yyline, yytext()); }
"List"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" list"); return new Symbol(sym.PRlist, yycolumn, yyline, yytext()); }
"Append"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" append"); return new Symbol(sym.PRappend, yycolumn, yyline, yytext()); }
"Remove"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" remove"); return new Symbol(sym.PRremove, yycolumn, yyline, yytext()); }
"Struct"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" struct"); return new Symbol(sym.PRstruct, yycolumn, yyline, yytext()); }
"Void"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" void"); return new Symbol(sym.PRvoid, yycolumn, yyline, yytext()); }
"Println"       { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" println"); return new Symbol(sym.PRprintln, yycolumn, yyline, yytext()); }
"Round"         { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" round"); return new Symbol(sym.PRround, yycolumn, yyline, yytext()); }
"Length"        { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" length"); return new Symbol(sym.PRlength, yycolumn, yyline, yytext()); }
"toString"      { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" toString"); return new Symbol(sym.PRtoString, yycolumn, yyline, yytext()); }
"find"          { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" find"); return new Symbol(sym.PRfind, yycolumn, yyline, yytext()); }
"start_with"    { Token nuevo = new Token(yytext(), "Palabra Reservada", yyline,yycolumn);
                Principal.ListaTokens.add(nuevo);
                System.out.println("Reconocio "+yytext()+" startWith"); return new Symbol(sym.PRstartWith, yycolumn, yyline, yytext()); }

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
{enteroo}     { Token nuevo = new Token(yytext(), "Entero", yyline,yycolumn);
               Principal.ListaTokens.add(nuevo);
               System.out.println("Reconocio "+yytext()+" Entero"); return new Symbol(sym.entero, yycolumn, yyline, yytext()); }
{charr}      { Token nuevo = new Token(yytext(), "character", yyline,yycolumn);
               Principal.ListaTokens.add(nuevo);
               System.out.println("Reconocio "+yytext()+" character"); return new Symbol(sym.character, yycolumn, yyline, yytext()); }

//------> Espacios
{comentariosimple}     {Token nuevo = new Token(yytext(), "Comentario Simple", yyline,yycolumn);
                        Principal.ListaTokens.add(nuevo);
                        System.out.println("Comentario: "+yytext()); }
{comentarioMulti}      {Token nuevo = new Token(yytext(), "Comentario Multi", yyline,yycolumn);
                        Principal.ListaTokens.add(nuevo);
                        System.out.println("Comentario: "+yytext()); }
{EspaciosB}             {/* Espacios en blanco, se ignoran */}

//------> Errores Lexicos
.                       { Errores err = new Errores("Lexico",yytext(), yyline, yycolumn); 
                          Principal.ListaErrores.add(err);
                        }


