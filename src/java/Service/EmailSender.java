package Service;

import com.mysql.cj.Session;
import com.mysql.cj.protocol.Message;
import java.net.Authenticator;
import java.net.PasswordAuthentication;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;
import sun.rmi.transport.Transport;

public class EmailSender {

    /**
     * Utility method to send simple HTML email
     *
     * @param session
     * @param toEmail
     * @param subject
     * @param body
     */
    public static void sendEmail(Session session, String toEmail, String subject, String body) {
        try {
            MimeMessage msg = new MimeMessage(session);
            //set message headers
            msg.addHeader("Content-type", "text/HTML; charset=UTF-8");
            msg.addHeader("format", "flowed");
            msg.addHeader("Content-Transfer-Encoding", "8bit");

            msg.setSubject(subject, "UTF-8");

            msg.setText(body, "UTF-8");

            msg.setSentDate(new Date());

            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail, false));
            Transport.send(msg);

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void EmailSpecifier(String reciever, String messageSubject, String message ) {
//        final String fromEmail = "subinsedhai002@gmail.com"; //requires valid gmail id
//        final String password = "ecgsagldchlcfqjc"; // correct password for gmail id
        final String fromEmail = "virinchicollegeproject@gmail.com"; //requires valid gmail id
        final String password = "cyolblhmbwywkopq"; // correct password for gmail id
        final String toEmail = reciever; // can be any email id 

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com"); //SMTP Host
        props.put("mail.smtp.port", "587"); //TLS Port
        props.put("mail.smtp.auth", "true"); //enable authentication
        props.put("mail.smtp.starttls.enable", "true"); //enable STARTTLS

        //create Authenticator object to pass in Session.getInstance argument
        Authenticator auth = new Authenticator() {
            //override the getPasswordAuthentication method
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(fromEmail, password);
            }
        };
        Session session = Session.getInstance(props, auth);

        sendEmail(session, toEmail, messageSubject, message);

    }
    
       public void ResetPassword(String newPassword, String identifier) {
        DatabaseService databaseService = new DatabaseService();
        String salt = null, Hash = null;
        boolean Result = false;
        try {
            ResultSet UId = databaseService.GetData("user_credentials", new TableData("username", identifier), "UniqueId");
            
            while(UId.next()) {
                String UniqueId = UId.getString("UniqueId");
                ResultSet s = databaseService.GetData("sea", new TableData("SaltId", UniqueId), "Salt");
                s.next();
                salt = s.getString("Salt");
            }
            
            Hash = createHash(newPassword, salt);

            String stmt = "Update user_credentials set Password = ? where Username = ?";
            
            Connection con = new DatabaseConnection().ConnectionEstablishment();
            PreparedStatement ps = con.prepareStatement(stmt);
            ps.setString(1, Hash);
            ps.setString(2, identifier);
            ps.executeUpdate();
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}