<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>



<meta charset="ISO-8859-1">
<title>MAIL AT</title>
</head>
<body>

  <div id="comments">
  <%if(request.getParameter("sonuc")!=null && request.getParameter("sonuc").equals("1")) { %>
<div class="alert-success">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">×</span> 
Mail Gönderildi.
</div>
<%}else if(request.getParameter("sonuc")!=null && request.getParameter("sonuc").equals("0")) { %>
<div class="alert-unsuccess">
 <span class="closebtn" onclick="this.parentElement.style.display='none';">×</span> 
Mail Gönderilemedi.
</div>
<%} %>
<div id="main" style="margin: auto;width: 50%; margin-top:150px;">
<div class="container">
  <form action="MailControl.jsp" method="post">
  <div class="row">
      <div class="col-25">
        <label for="lname">E-mail Adresiniz </label>
      </div>
      <div class="col-75">
        <input type="email" id="lname" name="from" placeholder="E-Posta Giriniz">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="pword">Şifreniz</label>
      </div>
      <div class="col-75">
        <input type="password" id="pword" name="password" placeholder="Yönetici Şifresi">
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="fname">Alıcı E Posta</label>
      </div>
      <div class="col-75">
        <input type="email" id="fname" name="to" placeholder="E-Posta Giriniz">
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="email">Mail Konusu</label>
      </div>
      <div class="col-75">
		<input type="text" id="email" name="header" placeholder="Mail Başlığı Giriniz..">
      </div>
    </div>
 <div class="row">
      <div class="col-25">
        <label for="mesaj">Mail İçeriği</label>
      </div>
      <div class="col-75">

		<textarea  cols="25" id="mesaj" name="message" placeholder="Göndermek istediğiniz Mesaj"></textarea>
      </div>
    </div>
    <div class="row">
      <input type="submit" value="Mail Gönder">
    </div>
    
  
  </form>
  </form>
     <a href="form.jsp" class="btn" style="border:2px solid MediumSeaGreen;" role="button">GERİ DÖN</a>
      </div>
</body>
</html>