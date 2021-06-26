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
    <title>HAKEM-MAKALE SİSTEMİ</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:400" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="fontawesome/css/all.min.css" rel="stylesheet" />
    <link href="css/magnific-popup.min.css" rel="stylesheet" />
    <link href="slick/slick.css" rel='stylesheet' />
    <link href="slick/slick-theme.css" rel='stylesheet' />
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
                        <h1 class="text-uppercase tm-site-name">HAKEM-MAKALE</h1>
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
                                        <a class="nav-link tm-nav-link" href="sifreguncelle.jsp">ŞİFRE GÜNCELLE</a>
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
 
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/parallax.min.js"></script>
    <script src="js/imagesloaded.pkgd.min.js"></script>
    <script src="js/isotope.pkgd.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="slick/slick.min.js"></script>
    <script src="js/tooplate-script.js"></script>
    <script>        
        $(document).ready(function () {
            /* Isotope Gallery */            
            var $gallery = $(".tm-gallery").isotope({
                itemSelector: ".tm-gallery-item",
                filter: '.category-1'
                // layoutMode: "fitRows"
            });
            // layout Isotope after each image loads
            $gallery.imagesLoaded().progress(function () {
                $gallery.isotope("layout");
            });

            $(".filters-button-group").on("click", "a", function () {
                var filterValue = $(this).attr("data-filter");
                $gallery.isotope({ filter: filterValue });
            });

            /* Categories */
            $(".tabgroup > div").hide();
            $(".tabgroup > div:first-of-type").show();
            $(".tabs a").click(function (e) {
                e.preventDefault();
                var $this = $(this),
                    tabgroup = "#" + $this.parents(".tabs").data("tabgroup"),
                    others = $this
                        .closest("li")
                        .siblings()
                        .children("a"),
                    target = $this.attr("href");
                others.removeClass("active");
                $this.addClass("active");

                // Scroll to tab content (for mobile)
                if ($(window).width() < 992) {
                    $("html, body").animate(
                        {
                            scrollTop: $("#tmGallery").offset().top
                        },
                        200
                    );
                }
            });

            // Magnific Pop up
            $('.tm-gallery').magnificPopup({
                delegate: 'a',
                type: 'image',
                gallery: { enabled: true }
            });

            // Testimonials carousel
            $('.tm-carousel').slick({
                dots: true,
                infinite: false,
                speed: 300,
                slidesToShow: 1,
                slidesToScroll: 1
            });
        });

    </script>
</body>

</html>