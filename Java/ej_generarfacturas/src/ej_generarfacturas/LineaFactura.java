package ej_generarfacturas;

import java.io.Serializable;



public class LineaFactura implements Serializable {

    
    private Articulo articulo;
    private int cantidad;
    
    public LineaFactura(Articulo a,int cantidad){
        this.articulo = a;
        this.cantidad = cantidad;
    }
    

    public Articulo getArticulo() {
        return articulo;
    }
    public void setArticulo(Articulo articulo) {
        this.articulo = articulo;
    }
    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }
    
    
}