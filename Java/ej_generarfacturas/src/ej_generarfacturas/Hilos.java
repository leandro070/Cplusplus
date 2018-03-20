package ej_generarfacturas;

import java.io.IOException;
import java.util.ArrayList;
import java.util.ListIterator;



public class Hilos extends Thread{
		static ArrayList facturas;
		public int nroFactura;
		public int inicio;
		public int limite;
		private int encontrado;
		static private boolean exito=false;
		

		
		
	// boolean que pondremos a false cuando queramos parar el hilo
	   private boolean continuar = true;
	   
	   // metodo para poner el boolean a false.
	   public void detenElHilo()
	   {
	      continuar=false;
	   }

	   // Metodo del hilo
	   public void run()
	   {
          // mientras continuar ...
	      while (continuar)
	      {	
	    	  exito=false;
	    	  int contador=inicio;
			  System.out.println("Buscando, espere un momento. El "+super.getName()+" esta trabajando");
	    	  while(contador<limite&&!exito) {
	    		  Factura f=(Factura)facturas.get(contador);
	    		  encontrado=f.getNumero();
	    		  
	    		  if(encontrado==nroFactura) {
	    			  exito=true;
	    			  System.out.println("Factura numero "+encontrado+" encontrada por el "+super.getName()); 
	    			  return;

	    		  }
	    		  
	    		  contador++;    		 
	    	  }
	    	  if (!exito&& contador>=limite) {
	    		System.out.println("Factura no encontrada, ingrese una nueva factura");  
				return;
	    	  }
	    	  
	      }
	   } 
	
}
