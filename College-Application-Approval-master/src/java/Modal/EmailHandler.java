/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import java.util.Random;
import javax.mail.MessagingException;

/**
 *
 * @author shobhit
 */
public class EmailHandler {
    
    final static String from = "ssinha.cse16@chitkarauniversity.edu.in";
    static String to = " ";
    final static String pass ="$$shobhitsinha$$";
    final static String sub = "verification code";
    static String msg = " ";
//   public static void handler(String from,String to,String pass,String sub,String msg) throws RuntimeException, MessagingException{
//     
//       SendMail.sendmail(from, to, sub, pass, msg);
//   }
    public EmailHandler(String userEmail){
            to = userEmail;
    }
    public static String genMsg(){
        int token;
        Random rand = new Random();
        token = (int)(Math.random() * 49586 + 1); 
        return (token+"");
    }
    public static String mailHandler(String userEmail) throws RuntimeException, MessagingException{
        EmailHandler eh = new EmailHandler(userEmail);
        msg = genMsg();
        SendMail.sendmail(from, to, sub, pass, msg);
        return msg;
    }
    
}
