/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

import javax.mail.MessagingException;

/**
 *
 * @author shobhit
 */
public class EmailHandler {
    
    final static String from = "ssinha.cse16@chitkarauniversity.edu.in";
    final static String to = "saurabhsinghal998@gmail.com";
    final static String pass ="$$shobhitsinha$$";
    final static String sub = "verification code";
    final static String msg = "1234";
//   public static void handler(String from,String to,String pass,String sub,String msg) throws RuntimeException, MessagingException{
//     
//       SendMail.sendmail(from, to, sub, pass, msg);
//   }
    public static void main(String []args) throws RuntimeException, MessagingException{
        SendMail.sendmail(from, to, sub, pass, msg);
    }
    
}
