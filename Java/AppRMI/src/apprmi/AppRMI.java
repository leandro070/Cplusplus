/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package apprmi;

import java.rmi.AccessException;
import java.rmi.NotBoundException;
import java.rmi.RMISecurityManager;
import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;
import java.rmi.Naming;
import tutifruti.RmiServerIntf;

/**
 *
 * @author leandro
 */
public class AppRMI {

    private static final String HOST = "jmonetti.ddns.net";
    private static final int PUERTO = 1099;
    private static String NOMBREOBJ = "";
    private static Registry registry;

    public static void main(String[] args) throws Exception {

        registry = LocateRegistry.getRegistry(HOST, PUERTO);
        final String[] boundNames = registry.list();
        for (final String name : boundNames) {
            NOMBREOBJ = name;
            System.out.println("\t" + name);
        }

        String IPREMOTO = "//" + HOST + ":" + PUERTO + "/" + NOMBREOBJ;
        System.out.println("IP: " + IPREMOTO);
        if (System.getSecurityManager() == null) {
            System.setProperty("java.security.policy","java.policy");
            System.setSecurityManager(new RMISecurityManager());
        }
        RmiServerIntf remoteApi = (RmiServerIntf) Naming.lookup(IPREMOTO);
        System.out.println("Iniciando...");        
        String usuario = "leandrog";
        String clave = "organiza87";
        boolean finalizarConexion = false;
        System.out.println(remoteApi.comenzarComunicacion(usuario, clave));
        System.out.println(remoteApi.getLetra(usuario, clave));
        while(!finalizarConexion){
            
            Juego nuevoJuego= new Juego(usuario,clave,remoteApi);
            nuevoJuego.InicializarJuego();
            nuevoJuego.ComenzarJuego();
            System.out.println(remoteApi.getMisPuntos(usuario, clave));
            finalizarConexion=true;
        }

        System.out.println(remoteApi.terminarComunicacion(usuario, clave));

    }

}
