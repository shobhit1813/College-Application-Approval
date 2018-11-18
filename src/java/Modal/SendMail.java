/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modal;

/**
 *
 * @author shobhit
 */
import javax.mail.*;
import java.util.Properties;
import javax.mail.internet.*;
public class SendMail {
    
    public static void  sendmail(String from,String to,String sub, String pass,String msg)throws RuntimeException, AddressException, MessagingException{
        
    
    {
 
        
        Properties props =  new Properties();
          props.put("mail.smtp.host", "smtp.gmail.com");    
          props.put("mail.smtp.socketFactory.port", "465");    
          props.put("mail.smtp.socketFactory.class",    
                    "javax.net.ssl.SSLSocketFactory");    
          props.put("mail.smtp.auth", "true");    
          props.put("mail.smtp.port", "465");   
          
          Session session = Session.getDefaultInstance(props,
                  new GMailAuthenticator(from,pass){
                     PasswordAuthentication p =  getPasswordAuthentication();
                  }
             );
          
            MimeMessage message = new MimeMessage(session);    
           message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));    
           message.setSubject(sub);    
           message.setText(msg);    
           //send message  
           Transport.send(message);    
           System.out.println("message sent successfully");    
        }
    }
}