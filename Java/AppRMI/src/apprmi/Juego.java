/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package apprmi;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.rmi.RemoteException;
import tutifruti.RmiServerIntf;

/**
 *
 * @author Alumno
 */
public class Juego {
    private String clave,usuario;
    private String[] categorias;
    private RmiServerIntf conexion;
    
    
    public Juego(String usuario, String clave, RmiServerIntf conexion){
        this.usuario=usuario;
        this.clave=clave;
        this.conexion=conexion;
    }
    public void InicializarJuego() throws RemoteException{
        categorias=new String[]{"pais","frutaverdura","ciudad","cosa","deporte","nombremasculino","nombrefemenino","vegetal","acciones","cantantes","TOTAL"};
        System.out.println("Juego inicializado...");
    }
    public void ComenzarJuego() throws RemoteException, IOException{
        System.out.println("Comienza el juego!");
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in)); //Ya tenemos el "lector"
        System.out.println("Letra: "+conexion.getLetra(usuario,clave));
        while(true){
        System.out.println("Categoria: "+conexion.getCategoria(usuario, clave));
        System.out.println("Escribe la palabra:");
        String palabraIngresada = br.readLine(); //Se lee el nombre con readLine() que retorna un String con el dato
        System.out.println(conexion.setPalabra(palabraIngresada, usuario, clave));
        
        }
        
    }
            
            /*while (!finalizarConexion) {
            System.out.println("¿Que desea hacer?");
            System.out.println("1- Traer una letra nueva");
            System.out.println("2- Traer pais");
            switch (1) {
                case 1:
                    System.out.println(remoteApi.getLetra(usuario, clave));
                    break;
                default:
                    break;
            }
        }*/
}
