package ej_generarfacturas;

import java.io.Serializable;

/**
 *
 * @author julio
 */
public class Articulo implements Serializable {

    
    private int codigo;
    public String descripcion;
    public float preciocosto;
    public float precioventa;
    public String categoria;
    
    public Articulo(int codigo, String descripcion, float preciocosto, float precioventa, String categoria){
        this.codigo = codigo;
        this.descripcion = descripcion;
        this.preciocosto = preciocosto;
        this.precioventa = precioventa;
        this.categoria = categoria;
    }
    
    public int getCodigo() {
        return codigo;
    }
    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    
}
