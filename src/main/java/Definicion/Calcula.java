/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Definicion;

/**
 *
 * @author Henrr
 */
public class Calcula {
    private Double a;
    private Double b;
    private Double c;
    private Double x1;
    private Double x2;
    private Boolean imaginaria;

    public Calcula(String a, String b, String c) {
        this.a = Double.parseDouble(a) ;
        this.b = Double.parseDouble(b);
        this.c = Double.parseDouble(c);
        this.imaginaria=true;
    }

    public Boolean getImaginaria() {
        return imaginaria;
    }

    public void setImaginaria(Boolean imaginaria) {
        this.imaginaria = imaginaria;
    }
    public Double interno(){
        Double raiz=0.0;
        
        raiz= Math.pow(b,2)- (4*(a)*(c));
        
        return raiz;
    }
    
    public void calculo(){
        
        if(  interno()>=0){
            x1=Math.round((b) + Math.sqrt( interno()))/ (2 * (a));
            x2=Math.round((b) - Math.sqrt( interno()))/ (2 * (a));
            imaginaria=false;
        }
 
    }
    
    public Double getA() {
        return a;
    }

    public void setA(Double a) {
        this.a = a;
    }

    public Double getB() {
        return b;
    }

    public void setB(Double b) {
        this.b = b;
    }

    public Double getC() {
        return c;
    }

    public void setC(Double c) {
        this.c = c;
    }

    public Double getX1() {
        return x1;
    }

    public void setX1(Double x1) {
        this.x1 = x1;
    }

    public Double getX2() {
        return x2;
    }

    public void setX2(Double x2) {
        this.x2 = x2;
    }
    
}
