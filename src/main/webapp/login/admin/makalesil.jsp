<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.cj.xdevapi.Result"%>
<%@page import="Class.Baglanti"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<%
      try
      {
      String bilgi=session.getAttribute( "admin_mail" ).toString();
      if (bilgi == null){
    	  response.sendRedirect("../loginindex.jsp");
      }
      else{
    	  response.sendRedirect("makalesil.jsp");
      }
      }
      catch (Exception e) { System.out.println("Hata:"+e.getMessage());
      response.sendRedirect("../loginindex.jsp");}
      
      %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MAKALE SİLME KOD SAYFASI</title>
</head>
<body>
<%
	   int i;
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   ResultSet rs;
	   int gelenmakid=Integer.parseInt(request.getParameter("id"));
	   Boolean b=db.execute("delete from makalemydb.makale where makale_id='"+gelenmakid+"'");
	   if(b){
	       out.print("SİLME BAŞARILI");
	       response.sendRedirect("form.jsp");
	   }
	   else {
	       out.print("SİLME BAŞARISIZ");
	   }
	

%>
</body>
</html>