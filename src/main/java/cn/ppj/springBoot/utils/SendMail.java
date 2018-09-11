package cn.ppj.springBoot.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {

    public void sendMail(String mail,String url) {
    	
    	InputStream is = this.getClass().getResourceAsStream("/mailInfo.properties");
    	Properties prop = new Properties();
    	try {
			prop.load(is);
		} catch (IOException e1) {
			e1.printStackTrace();
		} 
    	
        String msgText = "请点击下面的连接激活用户，如果不能点击请手动复制到地址栏中执行\n" + url;
        String smtpHost = prop.get("smtpHost").toString();
        String from = prop.get("mailName").toString();
        String pwd = prop.get("pwd").toString();
        String to = mail;
        Properties props = new Properties();
        
        props.put("mail.smtp.host", smtpHost);
        props.put("mail.smtp.auth", "true");

      
        Session session = Session.getDefaultInstance(props, null);

       
        MimeMessage message = new MimeMessage(session);

        try {
            message.setFrom(new InternetAddress(from));

            InternetAddress[] address = {new InternetAddress(to)};

            message.setRecipients(Message.RecipientType.TO, address);

            message.setSubject("激活注册用户");

            message.setSentDate(new Date());

            message.setText(msgText);

            message.saveChanges(); // implicit with send()
           
            Transport transport = session.getTransport("smtp");
           
            transport.connect(smtpHost, from, pwd);
            transport.sendMessage(message, message.getAllRecipients());
            transport.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
