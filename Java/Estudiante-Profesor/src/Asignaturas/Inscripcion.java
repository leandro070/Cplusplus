/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Asignaturas;
import Miembros.Estudiante;
import java.util.ArrayList;
/**
 *
 * @author leandro
 */
public class Inscripcion {
    private Estudiante alumno;
    private Curso paraEl;
    
    public Inscripcion (Estudiante alumno, Curso c){
        this.alumno=alumno;
        paraEl=c;
        c.setInscripcion(this);
    }
    
    public static boolean estaInscripto (Estudiante estudiante, Curso curso){
        boolean estainscripto=false;
        ArrayList <Inscripcion> delAlumno = new ArrayList <Inscripcion>();
        delAlumno = curso.getArrayList();
        int tamano=delAlumno.size();
        for (int i = 0; i < tamano; i++) {
            Inscripcion inscrip = delAlumno.get(i);
            Estudiante estu = inscrip.getAlumno();
            if(estu==estudiante){
                estainscripto=true;
            }
        }
        return estainscripto;
    }
    
    public Estudiante getAlumno(){
    return alumno;
    }
    
    public Curso getCurso(){
    return paraEl;}
    
}
