<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KayıtOl</title>
</head>
<body>
<%

		   Baglanti db=new Baglanti();
		   pageContext.getResponse();
		   pageContext.getRequest();
		   String yazar_ad=request.getParameter("yazar_ad");
		   String yazar_mail=request.getParameter("yazar_mail");
		   String yazar_sifre=request.getParameter("yazar_sifre");
		   String yazar_gizlicumle=request.getParameter("yazar_gizlicumle");
			   if(yazar_ad!=null & yazar_mail!=null & yazar_sifre!=null & yazar_gizlicumle!=null)
			   {
				   if(kullanici.ozelvarmi(yazar_sifre)){
			   		    ResultSet rs;
				        String c= "insert into yazar values(null,'"+yazar_ad+"','"+yazar_mail+"','"+yazar_sifre+"','"+yazar_gizlicumle+"')";
					    db.execute(c);
					    response.sendRedirect("loginindex.jsp");
				   }
			   }
		 %>
</body>
</html>