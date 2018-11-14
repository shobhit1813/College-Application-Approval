/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;
import java.sql.*;
/**
 *
 * @author shobhit
 */
public class LoginDao {
    
    public static boolean validate(String name,String pass){
       boolean status = false;
       try{
           System.out.println("name "+name+" pass "+pass);
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/register?useSSL=false&verifyServerCertificate=false&allowMultiQueries=true","root","1810");
            PreparedStatement ps = con.prepareStatement("select * from userreg where fname =? and pass =?");
            ps.setString(1,name);
            ps.setString(2,pass);
          
            ResultSet rs = ps.executeQuery();
            status  = rs.next();
       }    
       catch(Exception e){
           System.out.println(e);
       }
        return status;
    }
}