/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Asignaturas;
import java.util.ArrayList;

/**
 *
 * @author leandro
 */
public class Curso {
    private String titulo;
    private ArrayList <Inscripcion> delAlumno = new ArrayList <Inscripcion>();
    public Curso(String titulo){
        this.titulo=titulo;
    }
    
    public void inscriptos(){
        int tamano=delAlumno.size();
        System.out.println("Hay "+tamano+" alumnos en el curso "+this.titulo);
        
        for (int i = 0; i < tamano; i++) {
            Inscripcion inscrip = delAlumno.get(i);
            String nomAlumno = inscrip.getAlumno().getNombre();
            Integer legAlumno = inscrip.getAlumno().getLegajo();
            System.out.println("Alumno: "+nomAlumno+"   Legajo: "+legAlumno);
        }
    }
    
    public void setInscripcion(Inscripcion inscrip){
        delAlumno.add(inscrip);    
    }
    
    public String getTitulo(){
    return titulo;}
    
    public ArrayList getArrayList(){
    return delAlumno;
    }
    
    public void cantInscriptos(){
        int cantInscrip = delAlumno.size();
        System.out.println("En el curso de "+titulo+" hay "+cantInscrip+" alumnos inscriptos");
    }
}
