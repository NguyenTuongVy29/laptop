<base href="http://localhost:8081/laptop/" />
<?php 
session_start();
include("include/connect.php");?>
<html>

<head>
    <html xmlns:fb="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="icon" type="image/png" href="img/logo-header.jpg" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="slide/engine/wowslider.js"></script>
    <script type="text/javascript" src="slide/engine/wowslider.mod.js"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bán laptop</title>

    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet'
        type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <script src="js/newsScrollerDefault-rightToleft-bottomTotop.js" type="text/javascript"></script>
    <script src="js/newsScrollerEdit-leftToright-topTobottom.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/zoom/cloud-zoom.1.0.2.js"></script>
    <link href="css/cloud-zoom.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="stylesheet" href="css/style1.css">
    <script language="javascript" type="text/javascript" src="js/jquery.easing.js"></script>
    <script language="javascript" type="text/javascript" src="js/script.js"></script>
    <link href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet' />
    <script src='https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script>
    $(document).ready(function() {

        $('ul.tabs').each(function() {

            // For each set of tabs, we want to keep track of

            // which tab is active and it's associated content

            var $active, $content, $links = $(this).find('a');

            // If the location.hash matches one of the links, use that as the active tab.

            // If no match is found, use the first link as the initial active tab.

            $active = $($links.filter('[href="' + location.hash + '"]')[0] || $links[0]);

            $active.addClass('active');

            $content = $($active.attr('href'));

            // Hide the remaining content

            $links.not($active).each(function() {

                $($(this).attr('href')).hide();

            });

            // Bind the click event handler

            $(this).on('click', 'a', function(e) {

                // Make the old tab inactive.

                $active.removeClass('active');

                $content.hide();

                // Update the variables with the new link and content

                $active = $(this);

                $content = $($(this).attr('href'));

                // Make the tab active.

                $active.addClass('active');

                $content.show();

                // Prevent the anchor's default click action

                e.preventDefault();

            });

        });

    });
    </script>
</head>

<body style="background:white">
    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div class="user-menu">
                        <ul>
                            <li><a href="index.php?content=dangky"><i class="fa fa-user"></i>Hồ sơ</a></li>
                            <li><a href=""><i class="fa fa-heart"></i>Ưu Thích</a></li>
                            <li><a href="index.php?content=cart"><i class="fa fa-user"></i>Giỏ Hàng</a></li>
                            <li><a href="index.php?content=cart&action=thanhtoan"><i class="fa fa-user"></i>Thanh
                                    Toán</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="header-right">
                        <ul class="list-unstyled list-inline">
                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href=""><span
                                        class="key">Đơn vị: </span><span class="value">VNĐ </span><b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">VNĐ</a></li>
                                    <li><a href="">USD</a></li>
                                </ul>
                            </li>

                            <li class="dropdown dropdown-small">
                                <a data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href=""><span
                                        class="key">Ngôn ngữ: </span><span class="value">Tiếng Việt </span><b
                                        class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li><a href="">Tiếng Việt</a></li>
                                    <li><a href="">English</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End header area -->
    <div class="">
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo">
                        <a href="index.php"><img src="img/logo.png"></a>
                    </div>
                </div>

                <div class="col-sm-4">
                    <nav class="navbar navbar-light bg-light">
                        <form class="form-inline">
                            <input class="form-control mr-sm-2" tTrang chủype="search" placeholder="Tìm kiếm"
                                aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit"><i class="fa fa-search"
                                    aria-hidden="true"></i></button>
                        </form>
                    </nav>
                </div>

                <div class="col-sm-4">
                    <div class="shopping-item">
                        <a href="index.php?content=cart"><span class="cart-amunt"></span> <i
                                class="fa fa-shopping-cart"></i> <span class="product-count"> <?php 
								$tongtien=0;
								if(isset($_SESSION['cart']))
								$count=count($_SESSION['cart']);
								else $count=0;
								if($count==0){
							?>
                                <p>0</p>
                                <?php } 
							else {
							?>
                                <p id="soluonggiohang"><span><?=$count?></span></p>

                                <p id="tiengiohang">
                                    <?php $sql ="select * from sanpham where idsp in(";
        
                            foreach($_SESSION['cart'] as $id => $soluong)
                                {
                                if($soluong>0)
                                    $sql .= $id.",";
                                }
                                if (substr($sql,-1,1)==',')
                                {
                                    $sql = substr($sql,0,-1);
                                }
                        $sql .=' )order by idsp 	';
                        $rows=mysqli_query($conn, $sql);
                    while ($row=mysqli_fetch_array($rows))
                    { 
                    $tongtien+=$_SESSION['cart'][$row['idsp']]*$row['gia']; 
                    }
                    ?> <?php  echo number_format($tongtien,"0",",",".");?> VNĐ
                                </p>



                                <?php } ?>
                            </span></a>

                    </div>


                    <!-- <div class="shopping-item">
                        <a href="index.php?content=dangky"> <i class="fa fa-user"></i>
                    </div> -->
                </div>
            </div>
        </div> <!-- End site branding area -->
        <?php
    include('./home_include/menu_ngang.php');
    
      ?>
        <div class="slider-area">
            <!-- Slider -->
            <div class="block-slider block-slider4">
                <ul class="" id="bxslider-home4">
                    <li>
                        <img src="img/bn11.png" alt="Slide">
                    </li>
                    <li><img src="img/bn9.png" alt="Slide">
                    </li>
                    <li><img src="img/bn6.png" alt="Slide">
                    </li>
                    <li><img src="img/bn7.png" alt="Slide">
                    </li>
                </ul>
            </div>
            <!-- ./Slider -->
        </div> <!-- End slider area -->

        <div class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo1">
                            <i class="fa fa-refresh"></i>
                            <p>30 Ngày Đổi Trả</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo2">
                            <i class="fa fa-truck"></i>
                            <p>Giao Hàng Miễn Phí</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo3">
                            <i class="fa fa-lock"></i>
                            <p>Trả góp 0%</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo promo4">
                            <i class="fa fa-gift"></i>
                            <p>Khuyến Mãi</p>
                        </div>
                    </div>
                </div>
            </div>
        </div> <!-- End promo area -->

        <div class="row">
            <div class="col-md-3">
                <?php
    include('home_include/left_content.php');
    ?>
            </div>

            <div class="col-md-6">
                <div id="content">
                    <div id="center-content">
                        <?php include("content_page.php"); ?>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <?php
    include('home_include/right_content.php');
    ?>
            </div>
        </div>

    </div><!-- End .main-content -->
    <div class="footer-top-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="">
                <div class="col-md-3 col-sm-6">
                    <div class="footer-about-us">
                        <h2>Liên hệ</h2>
                        <div class="footer-social">
                            <a href="" target="_blank"><i class="fa fa-facebook"></i></a>
                            <a href="" target="_blank"><i class="fa fa-twitter"></i></a>
                            <a href="" target="_blank"><i class="fa fa-youtube"></i></a>
                            <a href="" target="_blank"><i class="fa fa-linkedin"></i></a>
                        </div>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2>Cá Nhân</h2>
                        <ul>
                            <li><a href="">Tài Khoản</a></li>
                            <li><a href="">Lịch Sử Oder</a></li>
                            <li><a href="">Ưu Thich</a></li>
                            <li><a href="">Thanh Toán</a></li>
                            <li><a href="">Kiểm Tra Đơn Hàng</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="footer-menu">
                        <h2>Sản Phẩm</h2>
                        <ul>
                            <li><a href="">Sam Sung</a></li>
                            <li><a href="">Nokia</a></li>
                            <li><a href="">HTC</a></li>
                            <li><a href="">Iphone</a></li>
                            <li><a href="">Phụ kiện</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-3 col-sm-6">
                    <div class="footer-newsletter">
                        <h2>Nhận tin tức mới</h2>
                        <p>Đăng ký email để nhận những thông tin mới nhất</p>
                        <div class="newsletter-form">
                            <form action="">
                                <input type="email" placeholder="Nhập email">
                                <input type="submit" value="Đăng Ký">
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer top area -->

    <div class="footer-bottom-area">
        <div class="container">
            <div class="">
                <div class="col-md-8">
                    <div class="copyright">
                        <p>&copy; 2020<a href="" target="_blank"> Khóa luận tốt nghiệp</a></p>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="footer-card-icon">
                        <i class="fa fa-cc-discover"></i>
                        <i class="fa fa-cc-mastercard"></i>
                        <i class="fa fa-cc-paypal"></i>
                        <i class="fa fa-cc-visa"></i>
                    </div>
                </div>
            </div>
        </div>
    </div> <!-- End footer bottom area -->
    </div><!-- End .wapper -->
    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js"></script>

    <!-- Bootstrap JS form CDN -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.sticky.js"></script>

    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js"></script>

    <!-- Main Script -->
    <script src="js/main.js"></script>

    <!-- Slider -->
    <script type="text/javascript" src="js/bxslider.min.js"></script>
    <script type="text/javascript" src="js/script.slider.js"></script>
    <style>
    .bt-top,
    .bt-bottom,
    .bt-home {
        border-radius: 50px;
        visibility: hidden;
        background-color: ;
        width: 40px;
        height: 40px;
        text-align: center;
        line-height: 36px;
        position: fixed;
        bottom: 55px;
        right: 10px;
        z-index: 999;
        cursor: pointer;
        opacity: 0;
        -webkit-transform: translateZ(0);
        transition: all .3s
    }

    .bt-home {
        bottom: 10px !important;
        visibility: visible;
        opacity: .8;
        background:
    }

    .bt-top.show {
        visibility: visible;
        opacity: .8
    }

    .bt-bottom {
        opacity: .8;
        visibility: visible
    }

    .bt-top i,
    .bt-bottom i {
        font-size: 22px;
        color: ;position:absolute;top:9px;left:13px}.bt-home i{font-size:17px;top:12px;left:12px;color:;position:absolute}.bt-bottom i{top:10px}.bt-top:hover,.bt-bottom:hover,.bt-home:hover{opacity:1}.blog-footer-widgets{color:https://cungtoikhampha.com/ccc;clear:both;background:https://cungtoikhampha.com/323232;font-size:15px;padding:10px 0}https://cungtoikhampha.com/bp_toc a{color:https://cungtoikhampha.com/222}https://cungtoikhampha.com/bp_toc a:hover{color:https://cungtoikhampha.com/333}https://cungtoikhampha.com/footer-colleft{width:68%;float:left;margin:0;padding:0}https://cungtoikhampha.com/st-postleft{width:69%;float:left;margin:0;padding:0;position:relative;overflow:hidden}https://cungtoikhampha.com/st-sidebar-wrapper{width:30%;float:right;margin:0;padding:0}https://cungtoikhampha.com/colleft1{width:48%;float:left;margin:0;padding:0}https://cungtoikhampha.com/colleft2{width:48%;float:right;margin:0;padding:0}https://cungtoikhampha.com/colright{width:30%;float:right;margin:0;padding:0}https://cungtoikhampha.com/st-post-wrapper{max-width:1200px;width:100%;margin:0 auto;padding:0;overflow:hidden;margin-top:65px}https://cungtoikhampha.com/comments,.footer .widget,.sidebar .widget,.bt-top,.bt-bottom,.bt-home{box-shadow:0 1px 0 rgba(0,0,0,.05),0 3px 3px rgba(0,0,0,.05)}.st-hide{display:none}
    </style>
    <div class='bt-top' title='Lên trên'><i class='fa fa-angle-up'></i></div>
    <div class='bt-bottom' title='Xuống dưới'><i class='fa fa-angle-down'></i></div>
    <!-- <a href='index.php'>
        <div class='bt-home' title='Trang chủ'><i class='fa fa-home'></i></div>
    </a> -->
    <script type='text/javascript'>
    //<![CDATA[
    // StarTuanIt.Net Back to Top, Down, Home
    (function() {
        $(document).ready(function() {
            return $(window).scroll(function() {
                return $(window).scrollTop() > 200 ? $(".bt-top").addClass("show") : $(".bt-top")
                    .removeClass("show")
            }), $(".bt-top").click(function() {
                return $("html,body").animate({
                    scrollTop: "0"
                })
            })
        })
    }.call(this));
    (function() {
        $(document).ready(function() {
            return $(window).scroll(function() {
                return $(window).scrollTop() > 200 ? $(".bt-bottom").addClass("st-hide") : $(
                    ".bt-bottom").removeClass("st-hide")
            }), $(".bt-bottom").click(function() {
                return $("html,body").animate({
                    scrollTop: "99999"
                })
            })
        })
    }.call(this));
    //]]>
    </script>
</body>

</html>