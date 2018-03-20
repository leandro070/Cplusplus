package ej_generarfacturas;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author leandro
 */
public class Factura implements Serializable {

    private ArrayList<LineaFactura> lf = new ArrayList();
    private Date d;
    private int numero;
    private float total;

    public Factura(ArrayList<LineaFactura> lf, Date d, int numero) {
        this.lf = lf;
        this.d = d;
        this.numero = numero;

        //calcular total
        for (int i = 0; i < lf.size(); i++) {
            LineaFactura l = lf.get(i);
            total += l.getCantidad() * l.getArticulo().precioventa;
        }
    }

    public Date getD() {
        return d;
    }

    public void setD(Date d) {
        this.d = d;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public float getTotal() {
        return total;
    }

    public ArrayList<LineaFactura> getLf() {
        return lf;
    }

    public void setLf(ArrayList<LineaFactura> lf) {
        this.lf = lf;
    }

}
