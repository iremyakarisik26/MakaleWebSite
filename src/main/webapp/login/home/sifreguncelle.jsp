<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<%
      try
      {
      String bilgi=session.getAttribute( "yazar_mail" ).toString();
      if (bilgi == null){
    	  response.sendRedirect("../loginindex.jsp");
      }}
      catch (Exception e) { System.out.println("Hata:"+e.getMessage());
      response.sendRedirect("../loginindex.jsp");}
      
      %>
<html>
<head>
<title>ŞİFRE GÜNCELLEME TASARIM</title>
</head>
<body>
<form action="sifreguncelle2.jsp" method="post"> 
<h2  style="color:Darkred;">ŞİFRE GÜNCELLEME TASARIM SAYFASI</h2>
<br>
<input type="text" name="yazar_sifre" Placeholder="ŞİFRE ADI"/>	
<br>
<br>
<div class="login-check"></div>
<input type="submit" style="background-color:darkred;color:white;width:150px;height:40px;" value="GÜNCELLE">
</form>
</body>
</html>