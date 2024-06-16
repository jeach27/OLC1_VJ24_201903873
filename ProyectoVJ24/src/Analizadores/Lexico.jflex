package Analizadores;

//importaciones
import java_cup.runtime.Symbol;
import java.util.LinkedList;
import Errores.Errores;

%%

//codigo de usuario
%{
    public LinkedList<Errores> listaErrores = new LinkedList<>();
%}

%init{
    yyline = 1;
    yycolumn = 1;
    listaErrores = new LinkedList<>();
%init}

//caracteristicas de jflex
%cup
%class scanner
%public
%line
%char
%column
%full
%ignorecase

//simbolos del sistema
DosPuntos = ":" 
Igual = "="
PuntoComa = ";"
Suma = "+"
Resta = "-"
Asterisco = "*"
Diagonal = "/"
Porcentaje = "%"
SYMNOT = "!"
Menor = "<"
Mayor = ">"
SYMOR = "||"
SYMAND = "&&"
acentoPotencia = "^"
AbreP = "("
CierraP = ")"
AbreCorchete = "{"
CierraCorchete = "}"

digito = [0-9]
letra = [a-z]
cadena = [\"][^\"\n]+[\"]
doublee = [+-]? {digito}+ [\.] {digito}+
ident = {letra}({letra}|{ digito }|_)*
entero = [-]? {digito}+ 
charr = [\'][^\'\n]+[\']

LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]

comentariosimple    = "!" {InputCharacter}* {LineTerminator}?
comentarioMulti =  "<!" [^/] ~"!>"
EspaciosB = [\ \r\t\f\n]+


//palabras reservadas
PRvar = "Var"
PRconst = "Const"
PRint = "Int"
PRdouble = "Double"
Prbool = "Bool"
PRtrue = "True"
PRfalse = "False"
PRchar = "Char"
PRstring = "String"
PRif = "If"
PRelse = "Else"
PRmatch = "Match"
PRwhile = "While"
PRfor = "For"
PRdo = "Do"
PRbreak = "Break"
PRcontinue = "Continue"
PRreturn = "Return"
PRnew = "New"
PRlist = "List"
PRappend = "Append"
PRremove = "Remove"
PRstruct = "Struct"
PRvoid = "Void"
PRprintln = "Println"
PRround = "Round"
PRlength = "Length"
PRtoString = "toString"
PRfind = "find"
PRstartWith = "start_with"



%%
<YYINITIAL> {PRvar} {return new Symbol(sym.PRvar, yyline, yycolumn,yytext());}
<YYINITIAL> {PRconst} {return new Symbol(sym.PRconst, yyline, yycolumn,yytext());}
<YYINITIAL> {PRint} {return new Symbol(sym.PRint, yyline, yycolumn,yytext());}
<YYINITIAL> {PRdouble} {return new Symbol(sym.PRdouble, yyline, yycolumn,yytext());}
<YYINITIAL> {Prbool} {return new Symbol(sym.PRbool, yyline, yycolumn,yytext());}
<YYINITIAL> {PRtrue} {return new Symbol(sym.PRtrue, yyline, yycolumn,yytext());}
<YYINITIAL> {PRfalse} {return new Symbol(sym.PRfalse, yyline, yycolumn,yytext());}
<YYINITIAL> {PRchar} {return new Symbol(sym.PRchar, yyline, yycolumn,yytext());}
<YYINITIAL> {PRstring} {return new Symbol(sym.PRstring, yyline, yycolumn,yytext());}
<YYINITIAL> {PRif} {return new Symbol(sym.PRif, yyline, yycolumn,yytext());}
<YYINITIAL> {PRelse} {return new Symbol(sym.PRelse, yyline, yycolumn,yytext());}
<YYINITIAL> {PRmatch} {return new Symbol(sym.PRmatch, yyline, yycolumn,yytext());}
<YYINITIAL> {PRwhile} {return new Symbol(sym.PRwhile, yyline, yycolumn,yytext());}
<YYINITIAL> {PRfor} {return new Symbol(sym.PRfor, yyline, yycolumn,yytext());}
<YYINITIAL> {PRdo} {return new Symbol(sym.PRdo, yyline, yycolumn,yytext());}
<YYINITIAL> {PRbreak} {return new Symbol(sym.PRbreak, yyline, yycolumn,yytext());}
<YYINITIAL> {PRcontinue} {return new Symbol(sym.PRcontinue, yyline, yycolumn,yytext());}
<YYINITIAL> {PRreturn} {return new Symbol(sym.PRreturn, yyline, yycolumn,yytext());}
<YYINITIAL> {PRnew} {return new Symbol(sym.PRnew, yyline, yycolumn,yytext());}
<YYINITIAL> {PRlist} {return new Symbol(sym.PRlist, yyline, yycolumn,yytext());}
<YYINITIAL> {PRappend} {return new Symbol(sym.PRappend, yyline, yycolumn,yytext());}
<YYINITIAL> {PRremove} {return new Symbol(sym.PRremove, yyline, yycolumn,yytext());}
<YYINITIAL> {PRstruct} {return new Symbol(sym.PRstruct, yyline, yycolumn,yytext());}
<YYINITIAL> {PRvoid} {return new Symbol(sym.PRvoid, yyline, yycolumn,yytext());}
<YYINITIAL> {PRprintln} {return new Symbol(sym.PRprintln, yyline, yycolumn,yytext());}
<YYINITIAL> {PRround} {return new Symbol(sym.PRround, yyline, yycolumn,yytext());}
<YYINITIAL> {PRlength} {return new Symbol(sym.PRlength, yyline, yycolumn,yytext());}
<YYINITIAL> {PRtoString} {return new Symbol(sym.PRtoString, yyline, yycolumn,yytext());}
<YYINITIAL> {PRfind} {return new Symbol(sym.PRfind, yyline, yycolumn,yytext());}
<YYINITIAL> {PRstartWith} {return new Symbol(sym.PRstartWith, yyline, yycolumn,yytext());}


<YYINITIAL> {ident} {return new Symbol(sym.ident, yyline, yycolumn,yytext());}
<YYINITIAL> {doublee} {return new Symbol(sym.doublee, yyline, yycolumn,yytext());}
<YYINITIAL> {entero} {return new Symbol(sym.entero, yyline, yycolumn,yytext());}
<YYINITIAL> {charr} {return new Symbol(sym.character, yyline, yycolumn,yytext());}


<YYINITIAL> {cadena} {
    String cadena = yytext();
    cadena = cadena.substring(1, cadena.length()-1);
    return new Symbol(sym.cadena, yyline, yycolumn,cadena);
    }

<YYINITIAL> {DosPuntos} {return new Symbol(sym.DosPuntos, yyline, yycolumn,yytext());}
<YYINITIAL> {Igual} {return new Symbol(sym.Igual, yyline, yycolumn,yytext());}
<YYINITIAL> {PuntoComa} {return new Symbol(sym.PuntoComa, yyline, yycolumn,yytext());}
<YYINITIAL> {Suma} {return new Symbol(sym.Suma, yyline, yycolumn,yytext());}
<YYINITIAL> {Resta} {return new Symbol(sym.Resta, yyline, yycolumn,yytext());}
<YYINITIAL> {Asterisco} {return new Symbol(sym.Asterisco, yyline, yycolumn,yytext());}
<YYINITIAL> {Diagonal} {return new Symbol(sym.Diagonal, yyline, yycolumn,yytext());}
<YYINITIAL> {Porcentaje} {return new Symbol(sym.Porcentaje, yyline, yycolumn,yytext());}
<YYINITIAL> {SYMNOT} {return new Symbol(sym.SYMNOT, yyline, yycolumn,yytext());}
<YYINITIAL> {Menor} {return new Symbol(sym.menor, yyline, yycolumn,yytext());}
<YYINITIAL> {Mayor} {return new Symbol(sym.mayor, yyline, yycolumn,yytext());}
<YYINITIAL> {SYMOR} {return new Symbol(sym.SYMOR, yyline, yycolumn,yytext());}
<YYINITIAL> {SYMAND} {return new Symbol(sym.SYMAND, yyline, yycolumn,yytext());}
<YYINITIAL> {acentoPotencia} {return new Symbol(sym.acentoPotencia, yyline, yycolumn,yytext());}
<YYINITIAL> {AbreP} {return new Symbol(sym.AbreP, yyline, yycolumn,yytext());}
<YYINITIAL> {CierraP} {return new Symbol(sym.CierraP, yyline, yycolumn,yytext());}
<YYINITIAL> {AbreCorchete} {return new Symbol(sym.AbreC, yyline, yycolumn,yytext());}
<YYINITIAL> {CierraCorchete} {return new Symbol(sym.CierraC, yyline, yycolumn,yytext());}


<YYINITIAL> {EspaciosB} {}

<YYINITIAL> . {
                listaErrores.add(new Errores("LEXICO","El caracter "+
                yytext()+" NO pertenece al lenguaje", yyline, yycolumn));
                System.out.println(yytext());
}