
package sak;

import java.util.Scanner;
/**
 *
 * @author leandro
 * 
 * 
 * Este ejercicio pertenece a un desafio que dice:
 * 
 * Entrada
 * Un texto formado por caracteres alfabéticos y blancos. 
 * Cada palabra del texto está formada exclusivamente por caracteres alfabéticos y mide entre 1 y 10 caracteres de longitud.
 * 
 * Salida
 *La cantidad de veces que aparece la palabra "sak" o algo parecido: 
 *cualquier cadena de mayúsculas o minúsculas que empiece con una o más "s", siga con una o más "a" y termine con una o más "k".
 * 
 * Ejemplo
 * Entrada: asOINasASkl AsSAkk AsOPMNPOAS ASSaaaakASDAOG 
 * Salida: 2  
 * AsSAkk ASSaaakASDAOG son las palabras que tienen sak
 */
public class Sak {

    public static void main(String[] args) {
        String cadena, palabra;
        int cantidad=0;
        Scanner entrada = new Scanner("SAAAAAAAAAAAAK");
        
        while (entrada.hasNextLine()) {
            palabra = entrada.next();
            if (analisisDeSAK(palabra)) {
                System.out.println("La palabra: " + palabra + " tiene SAK!");
                cantidad++;
            }
        }
        System.out.println("La frase tiene "+cantidad+" palabras con SAK!");
    }

    public static boolean analisisDeSAK(String cadena) {
        char caracter, anterior;
        anterior = ' ';
        boolean tieneS = false;
        boolean tieneA = false;
        boolean tieneK = false;

        for (int i = 0; i < cadena.length(); i++) {

            caracter = cadena.charAt(i);

            if (caracter == 'S' || caracter == 's') {
                tieneS = true;
            }
            
            if ((caracter == 'A' || caracter == 'a') && (anterior == 'A' || anterior == 'a' || anterior == 'S' || anterior == 's')) {
                tieneA = true;
            }

            if ((caracter == 'K' || caracter == 'k') && (anterior == 'A' || anterior == 'a')) {
                tieneK = true;
            }

            if (tieneS && tieneA && tieneK) {
                return true;
            }

            if (caracter != 'S' && caracter != 's' && caracter != 'A' && caracter != 'a' && caracter != 'K' && caracter != 'k') {
                tieneS = false;
                tieneA = false;
                tieneK = false;
            }
            
            anterior = caracter;
        }

        return false;
    }

}
