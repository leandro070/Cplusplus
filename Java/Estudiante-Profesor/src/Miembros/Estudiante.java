/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Miembros;
import Asignaturas.Curso;
import Asignaturas.Inscripcion;

/**
 *
 * @author leandro
 */
public class Estudiante extends Persona {
    
    private Integer legajo;
    private Inscripcion inscripto;
    

    public Estudiante(Integer legajo, String nombre){
        super(nombre);
        this.legajo=legajo;
         }

    public void inscribir (Curso c){
        Inscripcion inscrip= new Inscripcion(this,c);
        inscripto=inscrip;
    }
    public String getNombre(){
    return nombre;
    }
    public Integer getLegajo(){
    return legajo;
    }
    public void queCurso(){
        
        System.out.println("El estudiante "+nombre+" cursa la catedra de "+inscripto.getCurso().getTitulo());
    }
}
