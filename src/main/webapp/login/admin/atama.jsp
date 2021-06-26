<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@ page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<%
int makaleId=(int)session.getAttribute("makaleId");
int hocaId=Integer.parseInt(request.getParameter("hakem_id"));
String hocaMail="";
out.print("okey "+makaleId+"HOCA"+hocaId);

Baglanti v = new Baglanti();

Boolean b =   v.execute("update makalemydb.makale set hakem_id='"+hocaId+"' where makale_id='"+makaleId+"' ");//
if(b){
	
	ResultSet rs = 	v.dbdenVeriCek("SELECT hakem_mail FROM makalemydb.hakem where hakem_id='"+hocaId+"' ");
	while(rs.next()){
		hocaMail=rs.getString("hakem_mail");
	}
	
	if(hocaMail !=null){
		String result;
		request.setCharacterEncoding("ISO-8859-9");
		   // alici mail adresi
		   String to = hocaMail;
		   

		   // gonderici mail adresi
		   String from =("tugcedokgoz19@gmail.com");
		   //gonderici sifre
		   String password=("6666");
		   System.out.println("mail 1 "+from);
		   System.out.println("mail 2 "+to);
		   System.out.println("şifre  "+password);

		   // ozellik nesnesi olusturuluyor
		   Properties properties = System.getProperties();

		   // mail server ayarlari yapiliyor
		   properties.put("mail.smtp.host", "smtp.gmail.com");
		   properties.put("mail.smtp.port", "587");
		   properties.put("mail.smtp.starttls.enable", "true");
		   properties.put("mail.smtp.auth", "true"); 

		   //SSL sertifikasi kullanilmak istenirse bu ayarlar eklenir
		   properties.put("mail.smtp.socketFactory.port", "465");
		   properties.put("mail.smtp.socketFactory.class", 
		       "javax.net.ssl.SSLSocketFactory");
		   properties.put("mail.smtp.auth", "true");
		   properties.put("mail.smtp.port", "465");

		   // Mail icin session nesnesi olusturulur.
		   Session mailSession = Session.getInstance(properties,
		                           new javax.mail.Authenticator() {
		                    protected PasswordAuthentication getPasswordAuthentication() {
		                           return new PasswordAuthentication(from, password);
		                    }
		             }); 

		   try {
		      // olusturulan sessiondan mimemesage nesnesi olusturulur
		      MimeMessage message = new MimeMessage(mailSession);
		      
		      // gonderici adresi set ediliyor
		      message.setFrom(new InternetAddress(from));
		      
		      // alici adresi set ediliyor
		      message.addRecipient(Message.RecipientType.TO,
		                               new InternetAddress(to));
		      // mail basligi set ediliyor
		      message.setSubject("header");
		      
		      // mail icerigi set ediliyor
		      message.setText("message");
		      
		      // mail gonderiliyor
		      Transport.send(message);
		      //mail gonderilir ise sonuc 1
		      response.sendRedirect("adminindex.jsp");
		   } catch (MessagingException mex) {
		      mex.printStackTrace();
		    //mail gonderilemez ise sonuc 0
		      response.sendRedirect("MailGonder.jsp?sonuc=0");
		   }
	}
	
	
	
	
}
else {
	
}
  
%>
</body>
</html>