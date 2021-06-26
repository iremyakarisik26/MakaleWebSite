<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<title>ŞİFREMİ UNUTTUM TASARIM</title>
</head>
<body>
<form action="sifremiunuttum2.jsp" method="post"> 
<h2  style="color:Darkred;">ŞİFREMİ UNUTTUM SAYFASI</h2>
<br>
<input type="email" name="yazar_mail" Placeholder="MAILINIZ"/>	
<br>
<br>
<input type="text" name="yazar_ad" Placeholder="ADINIZ"/>	
<br>
<br>
<input type="text" name="yazar_gizlicumle" Placeholder="GİZLİ CÜMLE"/>	
<br>
<br>
<input type="password" name="yazar_sifre" Placeholder="YENİ ŞİFRE"/>	
<br>
<br>

<div class="login-check"></div>
<input type="submit" style="background-color:darkred;color:white;width:150px;height:40px;" value="GÜNCEL YAP">
</form>




</body>
</html>