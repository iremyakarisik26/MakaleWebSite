<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ŞİFRE GÜNCELLEME KOD SAYFASI</title>
</head>
<body>
<%
Baglanti db=new Baglanti();
pageContext.getResponse();
pageContext.getRequest();
ResultSet rs;
String gelensifre=request.getParameter("yazar_sifre");
out.println(session.getAttribute("yazar_sifre"));
Boolean b=db.execute("Update yazar set yazar_sifre='" + gelensifre +"' where yazar_id='" + session.getAttribute("yazar_id") + "'");
if(b){
    out.print("GÜNCELLEME BAŞARILI");
    response.sendRedirect("index.jsp");
}
else {
    out.print("GÜNCELLEME BAŞARISIZ");
}
%>

</body>
</html>