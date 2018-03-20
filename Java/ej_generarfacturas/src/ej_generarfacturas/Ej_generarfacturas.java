package ej_generarfacturas;

import ej_generarfacturas.Hilos;
import ej_generarfacturas.Factura;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.Scanner;

/**
 *
 * @author leandro
 */
public class Ej_generarfacturas {

    public static void main(String[] args) throws IOException {
    	ArrayList Facturas = new ArrayList<Factura>();
    	int nroFactura;
        leerfacturas(Facturas);
    	
        buscarFacturaPorNumero(Facturas);
        System.out.println("Sigue trabajando");
    }
    
    public static void leerfacturas(ArrayList Facturas) {
    	
        Factura f = null;
    	

        FileInputStream fileInputStream = null;
        ObjectInputStream objectInputStream = null;
        
        try {
            fileInputStream = new FileInputStream("/home/odin/Descargas/facturas.txt");
            objectInputStream = new ObjectInputStream(fileInputStream);
        
            try {

                f = (Factura) objectInputStream.readObject();  //leer solo la primera
                if (f != null) {
                    Facturas.add(f);
                    
                                      
                }

                while (f != null) {
                    f = (Factura) objectInputStream.readObject();
                    if (f != null) {
                        Facturas.add(f);
                        
                        
                    }
                } 

            } catch (ClassNotFoundException ex) {
                ex.printStackTrace();
            } finally {
                try {
                    objectInputStream.close();
                } catch (IOException ex) {
                }
            }
           
        } catch (IOException ioe) {
             ioe.printStackTrace();

        } finally {
            try {
                 objectInputStream.close();
            } catch (IOException ex) {
            }
        }
        System.out.println("Finalizando al carga de facturas");
        System.out.println("Hay "+Facturas.size()+" facturas en la memoria");
    }
    
    
    public static void buscarFacturaPorNumero(ArrayList Facturas) {
    	while(true) {
    	Scanner reader = new Scanner(System.in);
        System.out.println("Ingresa una factura");
    	int nroFactura=reader.nextInt();
    	
    	int cantidad=Facturas.size();
    	
    	Hilos h1= new Hilos();
    	//Hilos h2= new Hilos();
    	h1.setName("Hilo numero 1");
    	h1.nroFactura=nroFactura;
    	//h2.nroFactura=nroFactura;
    	h1.inicio=0;
    	//h2.inicio=cantidad/2;
    	h1.limite=cantidad;
    	//h2.limite=cantidad;
    	h1.facturas=Facturas;
    	//h2.facturas=Facturas;
    	h1.run();
    	//h2.run();
   
    	}
    }

}
