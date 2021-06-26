<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>YazarLogin</title>
</head>
<body>
	<%
	   Baglanti db=new Baglanti();
	   pageContext.getResponse();
	   pageContext.getRequest();
	   String yazar_mail=request.getParameter("yazar_mail");
	   String yazar_sifre=request.getParameter("yazar_sifre");
	   if(yazar_mail!=null & yazar_sifre!=null)
	   {
	       ResultSet rs= db.dbdenVeriCek("select * from yazar where yazar_mail='"+yazar_mail+"' and yazar_sifre='"+yazar_sifre+"' ");
	
	       try{
	           rs.next();
	            if(rs.getString("yazar_mail").equals(yazar_mail) && rs.getString("yazar_sifre").equals(yazar_sifre)){
	                 session.setAttribute("yazar_id", rs.getString("yazar_id"));
	                 response.sendRedirect("home/index.jsp");
	      
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