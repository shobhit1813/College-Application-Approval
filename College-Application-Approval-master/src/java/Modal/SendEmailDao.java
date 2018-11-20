/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author shobhit
 */
public class SendEmailDao {
    public static boolean checkEmail(String toEmail){
     boolean status = false;
        try{
                Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=true&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
                Statement st = con.createStatement();
                String q = "SELECT pass FROM userreg where email='"+toEmail+"'";
                ResultSet rs = st.executeQuery(q);
                boolean i = rs.next();
                if(i) {
                    status = true;
                }
            }
            catch(Exception e){
                System.out.println(e);
            }
        return status;
    
    }
}
