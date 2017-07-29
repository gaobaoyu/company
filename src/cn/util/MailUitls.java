package cn.util;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.Message.RecipientType;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUitls {
	public static void sendMail(String to){
		/**
		 * 1.���һ��Session����.
		 * 2.����һ�������ʼ��Ķ���Message.
		 * 3.�����ʼ�Transport
		 */
		// 1.������Ӷ���
		Properties props = new Properties();
		props.setProperty("mail.transport.protocol", "smtp");
		props.setProperty("mail.host", "smtp.163.com");
		props.setProperty("mail.smtp.auth", "true");
		Session session = Session.getInstance(props, new Authenticator() {

			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication("15109116303@163.com", "gby19951218");
			}
			
		});
		// 2.�����ʼ�����:
		Message message = new MimeMessage(session);
		// ���÷���
		try {
			message.setFrom(new InternetAddress("15109116303@163.com"));
			// �����ռ�
			message.addRecipient(RecipientType.TO, new InternetAddress(to));
			// ���ñ���
			message.setSubject("��֤��Ϣ");
			// �����ʼ�����:
			message.setContent("<h1>�����ʼ�!������������ɼ������!</h1><h3><a href='http://localhost:8080/user/active.htm'>http://localhost:8080/user/active.htm</a></h3>", "text/html;charset=UTF-8");
			// 3.�����ʼ�:
			Transport.send(message);
		} catch (AddressException e) {
			e.printStackTrace();
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		
	}
	
	public static void main(String[] args) {
		sendMail("1911997163@qq.com");
	}
}
