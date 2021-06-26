<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="Class.Baglanti"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
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
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>HAKEM/MAKALE SİSTEMİ</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:400" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="css/templatemo-real-dynamic.css" rel="stylesheet" />
<!--

TemplateMo 547 Real Dynamic

https://templatemo.com/tm-547-real-dynamic

-->
</head>

<body>
    <div class="tm-container">
        <div class="tm-site-header"></div> <!-- tm-site-header -->
        <div class="tm-site-header-overlay">
            <div class="tm-header-stripe ml-auto"></div>
            <div class="tm-header-stripe tm-header-stripe-short ml-auto"></div>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-4 tm-site-header-left">
                        <h1 class="text-uppercase tm-site-name">Hakem - Makale</h1>
                    </div>
                    <div class="col-lg-8 tm-site-header-right">
                        <!--Navbar-->
                        <nav class="navbar navbar-expand-lg">
                            <!-- Collapse button -->
                            <button class="navbar-toggler toggler-example" type="button" data-toggle="collapse"
                                data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                                aria-label="Toggle navigation"><span class="dark-blue-text"><i class="fas fa-bars text-white"></i></span></button>
                            <!-- Collapsible content -->
                            <div class="collapse navbar-collapse tm-nav" id="navbarNav">
                                <!-- Links -->
                                <ul class="navbar-nav ml-auto">
                                    <li class="nav-item">
                                        <a class="nav-link tm-nav-link" href="index.jsp">MAKALELER</a>
                                    </li>                                 
                                    <li class="nav-item">
                                        <a class="nav-link tm-nav-link" href="about.jsp">YAZARLAR</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link tm-nav-link" href="gallery.jsp">ŞİFRE GÜNCELLE</a>
                                   </li>
                                      <li class="nav-item">
                                        <a class="nav-link tm-nav-link" href="../loginindex.jsp">ÇIKIŞ</a>
                                    </li>
                                    
                                </ul>
                                <!-- Links -->
                            </div>
                            <!-- Collapsible content -->
                        </nav>
                        <!--/.Navbar-->
                    </div> <!-- col -->
                </div> <!-- row -->
            </div> <!-- container fluid -->
        </div> <!-- tm-site-header-overlay -->
        <div class="tm-header-stripe w-100"></div>
    </div>
   
<br>
<br>
<br>
          <ul>
                  <li class="active" data-filter="*">SEVGİLİ KULLANICIMIZ , ARAMAK İSTEDİĞİNİZ YAZARI GİRİN...</li>
                  <form action="arama.jsp" method="get">
                  <input type="text" name="aranan"/>
                  <br>
                  <button class="btn btn-primary ">ARA</button>
                  <br>
                  </form>
         </ul>
<br>      
  <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2 style="background-color:#ccffcc">YAZARLAR</h2>   
                        
                         <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th style="background-color:#6699ff">YAZAR ID</th>
                                            <th style="background-color:#6699ff">YAZAR AD</th>
                                            <th style="background-color:#6699ff">YAZAR MAIL</th>
                                            <th style="background-color:#6699ff">YAZAR SIFRE</th>
               
                                        </tr>
                                    </thead>
                          
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
                   <br>
          <div class="col-md-12">
            <div class="filters-content">
                <div class="row grid">
                    <div class="col-lg-4 col-md-4 all des">
                      <div class="product-item">
                        <div class="down-content">
                         
                                      <% 

				                          Baglanti dt=new Baglanti();
                                          dt.baglan();
                                      	  PreparedStatement ps = null;
                                          String aranan=request.getParameter("aranan");
                                          String qry = "SELECT * FROM yazar WHERE yazar_ad like ?";
                                          ps = dt.con.prepareStatement(qry);
                                          ps.setString(1, "%" + aranan + "%");
                                 		  ResultSet rb=ps.executeQuery();
				                          if(rb!=null)
				                          {
				                             while(rb.next())
				                             {
				                                 %>
	  <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12"> 
				       <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <tr>
					                                    <td style="background-color:#ffccff"class="column1"><%=  rb.getString("yazar_id")%></td>
					                                    <td style="background-color:#ffccff"class="column3"><%=  rb.getString("yazar_ad")%></td>
					                                    <td style="background-color:#ffccff"class="column2"><%=  rb.getString("yazar_mail")%></td>
					                                    <td style="background-color:#ffccff"class="column3"><%=  rb.getString("yazar_sifre")%></td>
					                       </tr>
                                   
                                    </thead>
                          
                                </table>
                            </div>
                        </div>
			        </div>
               </div>	                           

                                                 <% 
                             
                                             }
                                          }
				                          dt.baglantiyiKes();
                                       %>
                     
  
                        </div>
                      </div>
                    </div>     
                </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
                
            <footer class="row">
                <p class="mb-0 w-100 text-center col-12">
                    Company &copy; 2020 Company Name 
                    
                    - Real Dynamic by <a rel="nofollow" href="https://templatemo.com" class="tm-text-link">TemplateMo</a>
                </p>
            </footer>
        </div> <!-- container-fluid -->
    </div> <!-- tm-container -->

    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/tooplate-script.js"></script>    
</body>
</html>