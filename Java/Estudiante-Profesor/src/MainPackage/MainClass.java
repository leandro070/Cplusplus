/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MainPackage;
import Miembros.*;
import Asignaturas.*;

/**
 *
 * @author leandro
 */
public class MainClass {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
           
           Curso matematica = new Curso("Matematicas");
           Curso lengua = new Curso("Lengua");

           Estudiante e1 = new Estudiante(40185,"Leandro Gutierrez");
           Estudiante e2 = new Estudiante(40186,"Emanuel Gutierrez");
           Estudiante e3 = new Estudiante(40187,"Dante Gutierrez");
           Estudiante e4 = new Estudiante(40188,"Omar Gutierrez");
           Estudiante e5 = new Estudiante(40189,"Alejandra Corzo");
           
           Profesor p1 = new Profesor("Alberto Diaz");
           Profesor p2 = new Profesor("Roberto Perez");
           
           p1.dicta(lengua);
           p2.dicta(matematica);
           
           e1.inscribir(lengua);
           e2.inscribir(matematica);
           e3.inscribir(lengua);
           e4.inscribir(matematica);
           e5.inscribir(lengua);
           
           lengua.inscriptos();
           matematica.inscriptos();

           p1.queDicta();
           p2.queDicta();
           
           e1.queCurso();
           e2.queCurso();
           e3.queCurso();
           e4.queCurso();
           e5.queCurso();
           
           boolean comprobacion = Inscripcion.estaInscripto(e1,matematica);
           System.out.println(comprobacion);
           
           lengua.cantInscriptos();
           matematica.cantInscriptos();
               
    }
    
}
