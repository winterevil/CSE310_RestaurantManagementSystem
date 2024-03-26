package citprog.restaurantweb.login;

import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class SendEmail {

    public String getRandom() {
        Random random = new Random();
        int number = random.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendEmail(Account account) {
        boolean test = false;
        String toEmail = account.getEmail();
        String fromEmail = "restaurantsavoria@gmail.com";
        String password = "hxet rqep bxnz qnpw";

        try {
            Properties pr = new Properties();
            pr.put("mail.smtp.auth", "true");
            pr.put("mail.smtp.starttls.enable", "true");
            pr.put("mail.smtp.host", "smtp.gmail.com");
            pr.put("mail.smtp.port", "25");
            pr.put("mail.smtp.ssl.trust", "smtp.gmail.com");

            Session session = Session.getInstance(pr, new Authenticator() {
                @Override
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication(fromEmail, password);
                }
            });

            Message mess = new MimeMessage(session);

            mess.setFrom(new InternetAddress(fromEmail));
            mess.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));
            mess.setSubject("Savoria Account Verification Code");
            mess.setContent("Please enter this code in order to verify your sign up or changing your password. Your verification code is: " + account.getCode() + ". Please, do not share this code with anyone. Thank you!", "text/html");

            Transport.send(mess);
            System.out.println("Sent email successfully");

            test = true;
        } catch (MessagingException e) {
            throw new RuntimeException(e);
        }
        return test;
    }
}