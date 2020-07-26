/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Definicion;
import java.io.*;
import Definicion.Calcula;
/**
 *
 * @author Henrr
 */
public class Archivo {
    public static void add(Calcula a,String path){
       File archivo;
       FileWriter fw=null;
       PrintWriter pw=null;
       try{
           archivo = new File("C:\\Users\\Henrr\\Desktop\\Java Web\\EcuacionCuadratica\\src\\main\\webapp\\WEB-INF\\raices.txt");
           fw= new FileWriter(archivo,true);
           pw= new PrintWriter (fw);
           pw.println(a.getA()+","+a.getB()+","+a.getC()+","+a.getX1()+","+a.getX2());
           
       } catch(Exception e){
           e.printStackTrace();
       }finally{
           try{
               if(pw != null){
                    pw.close();
               }  
           }catch(Exception e2){
               e2.printStackTrace();
           }
       }
   }
    
}
