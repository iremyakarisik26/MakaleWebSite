<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
</head>
<body>
	<%
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   String admin_mail=request.getParameter("admin_mail");
	   String admin_sifre=request.getParameter("admin_sifre");
	   if(admin_mail!=null & admin_sifre!=null)
	   {
	
	       ResultSet rs= db.dbdenVeriCek("select * from admin where admin_mail='"+admin_mail+"' and admin_sifre='"+admin_sifre+"' ");
	
	       try{
	           rs.next();
	            if(rs.getString("admin_mail").equals(admin_mail) && rs.getString("admin_sifre").equals(admin_sifre)){
	                System.out.print("Bağlantı başarılı userName = "+admin_mail+"sifre= "+admin_sifre); 
	                 response.sendRedirect("admin/adminindex.jsp");
	
	            }
	            else {
	                 response.sendRedirect("Error.jsp");
	            }
	       }catch(SQLException e){
	
	            System.out.print("e"+e); 
	       }
	       db.baglantiyiKes();
	   } 
	   else {
	
	        System.out.print("NULL"); 
	   }
   %>
</body>
</html>