<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ŞİFREMİ UNUTTUM KOD SAYFASI </title>
</head>
<body>
<%
     		Baglanti db=new Baglanti();
			String yazar_mail=request.getParameter("yazar_mail");  
			String yazar_ad=request.getParameter("yazar_ad");
			String yazar_gizlicumle=request.getParameter("yazar_gizlicumle");	
			String yazar_sifre=request.getParameter("yazar_sifre");
			int kontrol=0;
			ResultSet rs=db.dbdenVeriCek("select * from makalemydb.yazar where yazar_mail='"+yazar_mail+"' and yazar_ad='"+yazar_ad+"'");
			if(rs!=null){
				while(rs.next()){
					kontrol=1;
					Boolean b=db.execute("UPDATE makalemydb.yazar SET yazar_sifre='"+yazar_sifre+"' WHERE yazar_mail='"+yazar_mail+"'");
					response.sendRedirect("loginindex.jsp");
				}
				if(kontrol==0){
					response.sendRedirect("loginindex.jsp");
				}
			}
			else{
				System.out.println("Doğru Giriş Yap Be Bıktım");
			}



%>
</body>
</html>