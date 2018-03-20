/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Miembros;
import Asignaturas.Curso;
/**
 *
 * @author leandro
 */
public class Profesor extends Persona{
    public Profesor (String nombre){
        super(nombre);

    }
    
    private Curso docente;
    
    public void dicta(Curso c){
        docente=c;
    }
    public void queDicta (){
        System.out.println("El profesor "+nombre+" dicta la catedra de "+docente.getTitulo());
        
    }
      
}
