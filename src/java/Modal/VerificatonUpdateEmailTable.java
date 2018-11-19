/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author shobhit
 */
public class VerificatonUpdateEmailTable {
    
    public static void updateToken(String toEmail,String token) throws SQLException{
       
        try{
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
            PreparedStatement ps = con.prepareStatement("update userreg set token = ? where email =");
            ps.setString(1, token);
            ps.setString(2, toEmail);
            int i = ps.executeUpdate();
            if(i < 0){
                System.out.println("alert('Problem in token update')");
            }
        }
        catch(Exception e){
            System.out.println(e);
        }
        
    }
    
}
