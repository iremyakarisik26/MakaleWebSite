<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MAKALEYİ EDİTÖRE GÖNDERİR .</title>
</head>
<body>
<%
	Baglanti db=new Baglanti();
	pageContext.getResponse();
	pageContext.getRequest();
	String yazar_ad=request.getParameter("yazar_ad");
	String makale_konusu=request.getParameter("makale_konusu");
	String makale=request.getParameter("makale");
	ResultSet rs;
	int makale_durum=0;
	String b= "insert into makale values(null,'"+makale+"','"+makale_durum+"','"+yazar_ad+"','"+makale_konusu+"')";
	db.execute(b);
	response.sendRedirect("index.jsp");

%>
</body>
</html>