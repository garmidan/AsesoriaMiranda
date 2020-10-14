package com.AsesoriaContableBackend.demo.email;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
public class EmailServiceImpl{

	 public static void sendClaves(String para, String Nombres, String correoUsu, String clave) {
	        final String user = "gaes5fase4b@gmail.com";//cambiará en consecuencia al servidor utilizado
	        final String pass = "gaes12345";

	//1st paso) Obtener el objeto de sesión
	        Properties props = new Properties();
	        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
	        props.setProperty("mail.smtp.starttls.enable", "true");
	        props.put("mail.debug", "true");
	        props.setProperty("mail.smtp.port", "587");
	        props.setProperty("mail.smtp.starttls.required", "false");
	        props.setProperty("mail.smtp.auth", "true");
	        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

	        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(user, pass);
	            }
	        });

	//2nd paso)compose message
	        try {
	            MimeMessage message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(user)); // quien envia 
	            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para)); // quien recibe
	            message.setSubject("Recordatorio clave Asesora Miranda");

	            message.setContent(
	                    "<center><img src='http://elblogdeliher.com/wp-content/uploads/2014/02/contrase%C3%B1a.jpg' title='Claves'></center>"
	                    + "<h3> Recordatorio Claves. "
	                    + Nombres
	                    + "</h3>"
	                    + "Datos de Ingreso: "
	                    + "<h4> Correo usuario : "
	                    + correoUsu
	                    + "</h4>"
	                    + "<h4> Clave Usuario : "
	                    + clave
	                    + " </h4>", "text/html");

	            //3rd paso)send message
	            Transport.send(message);

	            System.out.println("Done");

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }

	    }
	 
	 public static void sendBienvenido(String para, String Nombres, String correoUsu, String clave) {
	        final String user = "gaes5fase4b@gmail.com";//cambiará en consecuencia al servidor utilizado
	        final String pass = "gaes12345";

	//1st paso) Obtener el objeto de sesión
	        Properties props = new Properties();
	        props.setProperty("mail.smtp.host", "smtp.gmail.com"); // envia 
	        props.setProperty("mail.smtp.starttls.enable", "true");
	        props.put("mail.debug", "true");
	        props.setProperty("mail.smtp.port", "587");
	        props.setProperty("mail.smtp.starttls.required", "false");
	        props.setProperty("mail.smtp.auth", "true");
	        props.setProperty("mail.smtp.ssl.trust", "smtp.gmail.com");

	        Session session = Session.getInstance(props, new javax.mail.Authenticator() {
	            @Override
	            protected PasswordAuthentication getPasswordAuthentication() {
	                return new PasswordAuthentication(user, pass);
	            }
	        });

	//2nd paso)compose message
	        try {
	            MimeMessage message = new MimeMessage(session);
	            message.setFrom(new InternetAddress(user));
	            message.addRecipient(Message.RecipientType.TO, new InternetAddress(para));
	            message.setSubject("Bienvenido sistema ASESORIA MIRANDA.");

	            message.setContent(
	                    "<center><img src='https://2.bp.blogspot.com/-XVz1sdrQO24/VZcX4JKCHOI/AAAAAAAAAC4/j-u1nhyhZu0/s1600/bienvenido.jpg' title='bv'></center>"
	                    + "<h3> Bienvenido sistema ADSI. "
	                    + Nombres
	                    + "</h3>"
	                    + "Datos de Ingreso: "
	                    + "<h4> Usuario : "
	                    + correoUsu
	                    + "</h4>"
	                    + "<h4> Clave Usuario : "
	                    + clave
	                    + " </h4>", "text/html");

	            //3rd paso)send message
	            Transport.send(message);

	            System.out.println("Done");

	        } catch (MessagingException e) {
	            throw new RuntimeException(e);
	        }

	    }
}
