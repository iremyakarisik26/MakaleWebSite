<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
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
    	  response.sendRedirect("adminindex.jsp");
      }
      }
      catch (Exception e) { System.out.println("Hata:"+e.getMessage());
      response.sendRedirect("../loginindex.jsp");}
      
      %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>YÖNETİCİ PANELİ</title>
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="adminindex.html">ADMİN PANEL</a> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;">  &nbsp; <a href="ek/loginindex.html" class="btn btn-danger square-btn-adjust">ÇIKIŞ YAP</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
                <nav class="navbar-default navbar-side" role="navigation">
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
				<li class="text-center">
                    <img src="assets/img/find_user.png" class="user-image img-responsive"/>
					</li>
				
					
                    
                     <li>
                        <a  href="ui.jsp"><i class="fa fa-desktop fa-3x"></i>MAKALE</a>
                    </li>
                      <li  >
                        <a  href="form.jsp"><i class="fa fa-edit fa-3x"></i>HOCALAR</a>
                    </li>
    
			
					                   
                    
                </ul>
               
            </div>
            
        </nav>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>ADMİN PANEL</h2>   
                        <h5>Welcome İREM , Yine görüşmek üzere.. </h5>
                    </div>
                </div>              
                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">
                    </div>
                </div>           

               
                    <div class="panel panel-default">
                        <div class="panel-heading">
                         YAZARLAR
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>                                 
                                            <th>ID</th>
                                            <th>AD</th>
                                            <th>MAIL</th>
                                            <th>SIFRE</th>
                                            
                                        </tr>
                                    </thead>
   <tbody>
                                        <% 
					                          Baglanti db = new Baglanti();
                                      		  ResultSet rs=db.dbdenVeriCek("SELECT * FROM makalemydb.yazar");
					                         if(rs!=null)
					                         {
					                        	 
					                             while(rs.next())
					                             {
					                                 %>
				
					                                <tr>
					                                    <td class="column1"><%=  rs.getString("yazar_id") %></td>
					                                    <td class="column3"><%=  rs.getString("yazar_ad") %></td>
					                                    <td class="column2"><%=  rs.getString("yazar_mail")%> </td>
					                                    <td class="column3"><%=  rs.getString("yazar_sifre") %></td>
					                                   
					                                </tr>
					                              
                                 <% 
                             }
					                             
                         }
					                        
                        %>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                    
                    </div>
                </div>
                 <!-- /. ROW  -->
                
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
    
   
</body>
</html>
