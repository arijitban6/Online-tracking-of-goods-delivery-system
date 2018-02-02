package com.wase6.Onlinetrackingofgoodsdeliverysystem.repositery;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

/**
 * Created by ariji on 2/3/2018.
 */
public class SendEmail {


    @Autowired
    private JavaMailSender mailsender;

    public void sendEmail(String to,String subject,String text) throws MessagingException {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject(subject);
        message.setText(text);
        mailsender.send(message);

    }
}
