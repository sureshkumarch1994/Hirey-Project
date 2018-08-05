package com.hire.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.opensymphony.xwork2.ActionSupport;

/* this service class is used to send generated password to employeer via mail */

public class EmployeerRegMail extends ActionSupport {
	private static final long serialVersionUID = 1L;

	public String sendMsg(String to,String name, String newpass) {
		final String from = "panelcodersoftware@gmail.com";
		final String pass = "panelcoder@123";
		String body = "<p>Hello "+ name +",</p>" + "<p>Your password is <b>" + newpass + "</b></p>"
				+ "<p>Please login with your email id and this password to change your password.</p>";

		// Get the session object
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session1 = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, pass);
			}
		});

		try {
			MimeMessage message = new MimeMessage(session1);

			message.setFrom(new InternetAddress(from));// change accordingly
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
			message.setSubject("Hire Employeer Password");
			message.setContent(body, "text/html; charset=utf-8");

			// send message
			Transport.send(message);

			System.out.println("message sent successfully");
			return SUCCESS;
		} catch (MessagingException e) {
			System.out.println(e);
			return ERROR;
		}

	}
}