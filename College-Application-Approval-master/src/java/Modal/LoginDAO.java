/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;
import java.sql.*;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
/**
 *
 * @author shobhit
 */
public class LoginDAO {
    public boolean search(Loginpojo l){
       
        Configuration cf = new Configuration();
            System.out.println("lula");
        cf.configure("hibernateCFG/hibernate.cfg.xml");
         System.out.println("loginda");
        SessionFactory sf = cf.buildSessionFactory();
         System.out.println("lo");
        Session s = sf.openSession();
        String n = l.getFname();
        String p = l.getPass();
        System.out.print(n+" check "+p);
        
        Loginpojo k = (Loginpojo)s.get(Loginpojo.class,l.getFname());
        
        s.close();
        sf.close();
        
        
        if(k == null){
            System.out.println("lala");
            return false;
        }
        else{
            
            if(k.equals(l)){
                return true;
            }
            else{
                return false;     
                }
        }
    
    }
}
