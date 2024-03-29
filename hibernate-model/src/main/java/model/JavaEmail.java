package model;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

public class JavaEmail {

		Session mailSession;
		 
	 
	    public void setMailServerProperties()
	    {
	        Properties properties = System.getProperties();
//	        emailProperties.put("mail.smtp.port", "586");
//	        emailProperties.put("mail.smtp.auth", "true");
//	        emailProperties.put("mail.smtp.starttls.enable", "true");
	        String host = "smtp.gmail.com";
	        properties.put("mail.smtp.host", host);
	        properties.put("mail.smtp.port", "465");
	        properties.put("mail.smtp.ssl.enable", "true");
	        properties.put("mail.smtp.auth", "true");
	        mailSession = Session.getDefaultInstance(properties, null);
	    }
	 
	    public MimeMessage draftEmailMessage(String[] to, String subject, String body) throws AddressException, MessagingException
	    {
	        String[] toEmails = to;
	        String emailSubject = subject;
	        String emailBody = body;
	        MimeMessage emailMessage = new MimeMessage(mailSession);
	        /**
	         * Set the mail recipients
	         * */
	        for (int i = 0; i < toEmails.length; i++)
	        {
	            emailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(toEmails[i]));
	        }
	        emailMessage.setSubject(emailSubject);
	        /**
	         * If sending HTML mail
	         * */
	        emailMessage.setContent(emailBody, "text/html");
	        /**
	         * If sending only text mail
	         * */
	        //emailMessage.setText(emailBody);// for a text email
	        return emailMessage;
	    }
	 
	    public void sendEmail(String[] to, String subject, String body) throws AddressException, MessagingException
	    {
	        /**
	         * Sender's credentials
	         * */
	        String fromUser = "girianish2711@gmail.com";
	        String fromUserEmailPassword = "Anish11@@@";
	 
	        String emailHost = "smtp.gmail.com";
	        Transport transport = mailSession.getTransport("smtp");
	        transport.connect(emailHost, fromUser, fromUserEmailPassword);
	        /**
	         * Draft the message
	         * */
	        MimeMessage emailMessage = draftEmailMessage(to, subject, body);
	        /**
	         * Send the mail
	         * */
	        transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
	        transport.close();
	        System.out.println("Email sent successfully.");
	    }
		
	

}
