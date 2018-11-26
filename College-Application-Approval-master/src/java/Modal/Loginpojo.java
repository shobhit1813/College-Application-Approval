/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import Controller.Login;

/**
 *
 * @author shobhit
 */
public class Loginpojo {
    private String fname;
    private String pass;
    public Loginpojo(){}
    
    public Loginpojo(String fname,String pass){
        this.fname = fname;
        this.pass = pass;
    }

    public String getFname() {
        return fname;
    }

    public String getPass() {
        return pass;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }
    
    @Override
    public boolean equals(Object o){
    
         Loginpojo l = (Loginpojo)o;
         if(fname.equals(l.getFname()) && pass.equals(l.getPass())){
             return true;
         }
         else{
             return false;
         }
       }
    }

