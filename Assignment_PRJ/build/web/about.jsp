

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title> About : Mangosteen</title>
        <!--/tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="keywords" content="Elite Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!--//tags -->
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/team.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <link href="css/font-awesome.css" rel="stylesheet"> 
        <!-- //for bootstrap working -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
        <link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,900,900italic,700italic' rel='stylesheet' type='text/css'>
    </head>
    <body>
        <!-- header -->
        <div class="header" id="home">
            <div class="container">
                <ul>
                    <c:if test="${sessionScope.ac == null}">
                        <li > <a href="login" ><i class="fa fa-unlock-alt" aria-hidden="true"></i> Đăng Nhập </a></li>
                        <li > <a href="signup" ><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Đăng kí </a></li>
                    </c:if>
                    <li ><i class="fa fa-phone" aria-hidden="true"></i> 01234567898</li>
                    <li ><i class="fa fa-envelope-o" aria-hidden="true"></i> kimkim01@gmail.com</li>
                        <c:if test="${sessionScope.ac != null}">
                        <li > <a href="logout" ><i class="fa fa-lock-alt" aria-hidden="true"></i> Đăng xuất </a></li>
                        <li > <i class="fa fa-lock-alt" aria-hidden="true"></i> Xin chào ${sessionScope.ac.displayname} </li>
                        </c:if>
                </ul>
            </div>
        </div>
        <!-- //header -->
        <!-- header-bot -->
        <div class="header-bot">
            <div class="header-bot_inner_wthreeinfo_header_mid">
                <div class="col-md-4 header-middle">
                    <form action="search" method="post">
                        <input type="search" name="keyword" placeholder="Tìm kiếm..." required="">
                        <input type="submit" value=" ">
                        <div class="clearfix"></div>
                    </form>
                </div>
                <!-- header-bot -->
                <div class="col-md-4 logo_agile">
                    <h1><a href="home"><span>M</span>angosteen <i class="fa fa-shopping-bag top_logo_agile_bag" aria-hidden="true"></i></a></h1>
                </div>
                <!-- header-bot -->
                <div class="col-md-4 agileits-social top_content">
                    <ul class="social-nav model-3d-0 footer-social w3_agile_social">
                        <li class="share"> </li>
                        <li><a  class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                        <li><a  class="twitter"> 
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                        <li><a class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                        <li><a  class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                    </ul>



                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //header-bot -->
        <!-- banner -->
        <div class="ban-top">
            <div class="container">
                <div class="top_nav_left">
                    <nav class="navbar navbar-default">
                        <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Toggle navigation</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <!-- Collect the nav links, forms, and other content for toggling -->
                            <div class="collapse navbar-collapse menu--shylock" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav menu__list">
                                    <li class="active menu__item menu__item--current"><a class="menu__link" href="home">Trang chủ <span class="sr-only">(current)</span></a></li>
                                    <li class=" menu__item"><a class="menu__link" href="about">Mangosteen</a></li>
                                    <li class="dropdown menu__item">
                                        <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Romand<span class="caret"></span></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="agile_inner_drop_nav_info">
                                                <div class="col-sm-6 multi-gd-img1 multi-gd-text ">
                                                    <a href="shop-now"><img src="images/top1_1.png" alt=" "/></a>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <c:forEach items="${sessionScope.listCategoryRomand}" var="R">
                                                            <li><a href="category-controller?categoryId=${R.categoryId}">${R.categoryName}</a></li><br/>
                                                            </c:forEach>

                                                    </ul>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                    </ul>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </ul>
                                    </li>
                                    <li class="dropdown menu__item">
                                        <a href="#" class="dropdown-toggle menu__link" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gilaa<span class="caret"></span></a>
                                        <ul class="dropdown-menu multi-column columns-3">
                                            <div class="agile_inner_drop_nav_info">
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">
                                                        <c:forEach items="${sessionScope.listCategoryGilaa}" var="G">
                                                            <li><a href="category-controller?categoryId=${G.categoryId}">${G.categoryName}</a></li><br/>
                                                            </c:forEach>
                                                    </ul>
                                                </div>
                                                <div class="col-sm-3 multi-gd-img">
                                                    <ul class="multi-column-dropdown">                                        

                                                    </ul>
                                                </div>
                                                <div class="col-sm-6 multi-gd-img multi-gd-text ">
                                                    <a href="shop-now"><img src="images/top2_2.png" alt=" "/></a>
                                                </div>
                                                <div class="clearfix"></div>
                                            </div>
                                        </ul>
                                    </li>
                                    <!--                                    <li class="menu__item dropdown">
                                                                            <a class="menu__link" href="#" class="dropdown-toggle" data-toggle="dropdown">Short Codes <b class="caret"></b></a>
                                                                            <ul class="dropdown-menu agile_short_dropdown">
                                                                                <li><a href="icons.html">Web Icons</a></li>
                                                                                <li><a href="typography.html">Typography</a></li>
                                                                            </ul>
                                                                        </li>-->
                                    <li class=" menu__item"><a class="menu__link" href="contact">Liên hệ</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>	
                </div>
                <!--cart-->
                <div class="top_nav_right">
                    <div class="wthreecartaits wthreecartaits2 cart cart box_1"> 
                        <form action="carts" method="post" class="last"> 
                            <button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button> (${sessionScope.cart.size()})
                        </form>  
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- //banner-top -->
        <!-- Modal1 -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body modal-body-sub_agile">
                        <div class="col-md-8 modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Đăng Nhập <span> Mangosteen</span></h3>
                            <form action="#" method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" name="Name" required="">
                                    <label>Tên đăng nhập</label>
                                    <span></span>
                                </div>
                                <div class="styled-input">
                                    <input type="text" name="Password" required=""> 
                                    <label>Mật khẩu</label>
                                    <span></span>
                                </div> 
                                <input type="submit" value="Đăng nhập">
                            </form>
                            <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
                                <li><a href="#" class="facebook">
                                        <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                                <li><a href="#" class="twitter"> 
                                        <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                                <li><a href="#" class="instagram">
                                        <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                                <li><a href="#" class="pinterest">
                                        <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                            </ul>
                            <div class="clearfix"></div>
                            <p><a href="#" data-toggle="modal" data-target="#myModal2" > Bạn không có tài khoản?</a></p>

                        </div>
                        <div class="col-md-4 modal_body_right modal_body_right1">
                            <img src="images/log_pic.jpg" alt=" "/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //Modal content-->
            </div>
        </div>
        <!-- //Modal1 -->
        <!-- Modal2 -->
        <div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body modal-body-sub_agile">
                        <div class="col-md-8 modal_body_left modal_body_left1">
                            <h3 class="agileinfo_sign">Đăng kí <span>Mangosteen</span></h3>
                            <form action="#" method="post">
                                <div class="styled-input agile-styled-input-top">
                                    <input type="text" name="Name" required="">
                                    <label>Tên Đăng Nhập</label>
                                    <span></span>
                                </div>
                                <div class="styled-input">
                                    <input type="email" name="Email" required=""> 
                                    <label>Email</label>
                                    <span></span>
                                </div> 
                                <div class="styled-input">
                                    <input type="password" name="password" required=""> 
                                    <label>Mật khẩu</label>
                                    <span></span>
                                </div> 
                                <div class="styled-input">
                                    <input type="password" name="Confirm Password" required=""> 
                                    <label>Xác nhận lại mật khẩu</label>
                                    <span></span>
                                </div> 
                                <input type="submit" value="Đăng kí">
                            </form>
                            <ul class="social-nav model-3d-0 footer-social w3_agile_social top_agile_third">
                                <li><a href="#" class="facebook">
                                        <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                                <li><a href="#" class="twitter"> 
                                        <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                                <li><a href="#" class="instagram">
                                        <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                                <li><a href="#" class="pinterest">
                                        <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                        <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                            </ul>
                            <div class="clearfix"></div>
                            <p><a href="#">By clicking register, I agree to your terms</a></p>

                        </div>
                        <div class="col-md-4 modal_body_right modal_body_right1">
                            <img src="images/log_pic.jpg" alt=" "/>
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <!-- //Modal content-->
            </div>
        </div>
        <!-- //Modal2 -->
        <!-- /banner_bottom_agile_info -->
        <div class="page-head_agile_info_w3l">
            <div class="container">
                <h3 style="color: #ac2925">Một chút về <span style="color: black">Mangosteen </span></h3>
                <!--/w3_short-->
                <div class="services-breadcrumb">
                    <div class="agile_inner_breadcrumb">

                        <ul class="w3_short">
                            <li><a href="home" style="color: #ac2925">Trang chủ</a><i>|</i></li>
                            <li>Mangosteen shop</li>
                        </ul>
                    </div>
                </div>
                <!--//w3_short-->
            </div>
        </div>
        <!-- /banner_bottom_agile_info -->
        <div class="banner_bottom_agile_info">
            <div class="container">
                <div class="agile_ab_w3ls_info">
                    <div class="col-md-6 ab_pic_w3ls">
                        <img src="images/moi.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-6 ab_pic_w3ls_text_info">
                        <h5>Mangosteen <span> Shop</span> </h5>
                        <p> Mangosteen là cửa hàng bán son chính hãng liên kết trực tiếp với 2 hãng son nổi tiếng của Hàn quốc Là Gilaa và Romand. Đây là 2 hãng son nổi tiếng về bảng màu và độ mịn lì khi lên môi của son khiến cho đôi môi của bạn trở nên hoàn hảo. </p>
                        <p> Mong rằng khi đến với Mangosteen bạn sẽ có được trải nghiệm tốt nhất và sở hữu cho mình thỏi son ưng ý nhất để giúp bạn tự tin tỏa sáng.</p>
                    </div>
                    <div class="clearfix"></div>
                </div>    
                <div class="banner_bottom_agile_info_inner_w3ls">
                    <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
                        <figure class="effect-roxy">
                            <img src="images/romand-bia.webp" alt=" " class="img-responsive" />
                            <figcaption>
                                <h3><span>L</span>ip</h3>
                                <p>Romand</p>
                            </figcaption>			
                        </figure>
                    </div>
                    <div class="col-md-6 wthree_banner_bottom_grid_three_left1 grid">
                        <figure class="effect-roxy">
                            <img src="images/gilaa-bia.webp" alt=" " class="img-responsive" />
                            <figcaption>
                                <h3><span>L</span>ip</h3>
                                <p>Gilaa</p>
                            </figcaption>			
                        </figure>
                    </div>
                    <div class="clearfix"></div>
                </div> 
            </div> 
        </div>
        <!-- team -->
        <!--        <div class="banner_bottom_agile_info team">
                    <div class="container">
                        <h3 class="wthree_text_info">Our Team <span>Members</span></h3>
                        <div class="inner_w3l_agile_grids">
                            <div class="col-md-3 team-grids">
                                <div class="thumbnail team-w3agile">
                                    <img src="images/t1.jpg" class="img-responsive" alt="">
                                    <div class="social-icons team-icons right-w3l fotw33">
                                        <div class="caption">
                                            <h4>Joanna Vilken</h4>
                                            <p>Add Short Description</p>						
                                        </div>
                                        <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                                            <li><a href="#" class="facebook">
                                                    <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="twitter"> 
                                                    <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="instagram">
                                                    <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="pinterest">
                                                    <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 team-grids">
                                <div class="thumbnail team-w3agile">
                                    <img src="images/t2.jpg" class="img-responsive" alt="">
                                    <div class="social-icons team-icons right-w3l fotw33">
                                        <div class="caption">
                                            <h4>Anika Mollik</h4>
                                            <p>Add Short Description</p>						
                                        </div>
                                        <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                                            <li><a href="#" class="facebook">
                                                    <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="twitter"> 
                                                    <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="instagram">
                                                    <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="pinterest">
                                                    <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 team-grids">
                                <div class="thumbnail team-w3agile">
                                    <img src="images/t3.jpg" class="img-responsive" alt="">
                                    <div class="social-icons team-icons right-w3l fotw33">
                                        <div class="caption">
                                            <h4>Megali Deo</h4>
                                            <p>Add Short Description</p>						
                                        </div>
                                        <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                                            <li><a href="#" class="facebook">
                                                    <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="twitter"> 
                                                    <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="instagram">
                                                    <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="pinterest">
                                                    <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-3 team-grids">
                                <div class="thumbnail team-w3agile">
                                    <img src="images/t4.jpg" class="img-responsive" alt="">
                                    <div class="social-icons team-icons right-w3l fotw33">
                                        <div class="caption">
                                            <h4>Retas Word</h4>
                                            <p>Add Short Description</p>						
                                        </div>
                                        <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                                            <li><a href="#" class="facebook">
                                                    <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="twitter"> 
                                                    <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="instagram">
                                                    <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                                            <li><a href="#" class="pinterest">
                                                    <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                                    <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                </div>-->
        <!-- //team -->

        <!-- schedule-bottom -->
        <!--        <div class="schedule-bottom">
                    <div class="col-md-6 agileinfo_schedule_bottom_left">
                        <img src="images/mid.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-6 agileits_schedule_bottom_right">
                        <div class="w3ls_schedule_bottom_right_grid">
                            <h3>Save up to <span>50%</span> in this week</h3>
                            <p>Suspendisse varius turpis efficitur erat laoreet dapibus. 
                                Mauris sollicitudin scelerisque commodo.Nunc dapibus mauris sed metus finibus posuere.</p>
                            <div class="col-md-4 w3l_schedule_bottom_right_grid1">
                                <i class="fa fa-user-o" aria-hidden="true"></i>
                                <h4>Customers</h4>
                                <h5 class="counter">653</h5>
                            </div>
                            <div class="col-md-4 w3l_schedule_bottom_right_grid1">
                                <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                <h4>Events</h4>
                                <h5 class="counter">823</h5>
                            </div>
                            <div class="col-md-4 w3l_schedule_bottom_right_grid1">
                                <i class="fa fa-shield" aria-hidden="true"></i>
                                <h4>Awards</h4>
                                <h5 class="counter">45</h5>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>-->
        <!-- //schedule-bottom -->
        <!-- banner-bootom-w3-agileits -->
        <!--        <div class="banner-bootom-w3-agileits">
                    <div class="container">
                        <h3 class="wthree_text_info">What's <span>Trending</span></h3>
        
                        <div class="col-md-5 bb-grids bb-left-agileits-w3layouts">
                            <a href="women.html">
                                <div class="bb-left-agileits-w3layouts-inner grid">
                                    <figure class="effect-roxy">
                                        <img src="images/bb1.jpg" alt=" " class="img-responsive" />
                                        <figcaption>
                                            <h3><span>S</span>ale </h3>
                                            <p>Upto 55%</p>
                                        </figcaption>			
                                    </figure>
                                </div>
                            </a>
                        </div>
                        <div class="col-md-7 bb-grids bb-middle-agileits-w3layouts">
                            <div class="bb-middle-agileits-w3layouts grid">
                                <figure class="effect-roxy">
                                    <img src="images/bottom3.jpg" alt=" " class="img-responsive" />
                                    <figcaption>
                                        <h3><span>S</span>ale </h3>
                                        <p>Upto 55%</p>
                                    </figcaption>			
                                </figure>
                            </div>
                            <div class="bb-middle-agileits-w3layouts forth grid">
                                <figure class="effect-roxy">
                                    <img src="images/bottom4.jpg" alt=" " class="img-responsive">
                                    <figcaption>
                                        <h3><span>S</span>ale </h3>
                                        <p>Upto 65%</p>
                                    </figcaption>		
                                </figure>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                </div>-->
        <!--/grids-->
        <!--        <div class="agile_last_double_sectionw3ls">
                    <div class="col-md-6 multi-gd-img multi-gd-text ">
                        <a href="gilaa.jsp"><img src="images/bot_1.jpg" alt=" "><h4>Flat <span>50%</span> offer</h4></a>
        
                    </div>
                    <div class="col-md-6 multi-gd-img multi-gd-text ">
                        <a href="gilaa.jsp"><img src="images/bot_2.jpg" alt=" "><h4>Flat <span>50%</span> offer</h4></a>
                    </div>
                    <div class="clearfix"></div>
                </div>							-->
        <!--/grids-->
        <!-- /we-offer -->
        <!--        <div class="sale-w3ls">
                    <div class="container">
                        <h6>We Offer Flat <span>40%</span> Discount</h6>
        
                        <a class="hvr-outline-out button2" href="single.jsp">Shop Now </a>
                    </div>
                </div>-->
        <!-- //we-offer -->
        <!--/grids-->
        <div class="coupons">
            <div class="coupons-grids text-center">
                <div class="w3layouts_mail_grid">
                    <div class="col-md-3 w3layouts_mail_grid_left">
                        <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                            <i class="fa fa-truck" aria-hidden="true"></i>
                        </div>
                        <div class="w3layouts_mail_grid_left2">
                            <br>
                            <h3>MIỄN PHÍ VẬN CHUYỂN</h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="col-md-3 w3layouts_mail_grid_left">
                        <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                            <i class="fa fa-headphones" aria-hidden="true"></i>
                        </div>
                        <div class="w3layouts_mail_grid_left2">
                            <br>
                            <h3> HỖ TRỢ 24/7 </h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="col-md-3 w3layouts_mail_grid_left">
                        <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                        </div>
                        <div class="w3layouts_mail_grid_left2">
                            <br>
                            <h3>THANH TOÁN KHI NHẬN HÀNG </h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="col-md-3 w3layouts_mail_grid_left">
                        <div class="w3layouts_mail_grid_left1 hvr-radial-out">
                            <i class="fa fa-gift" aria-hidden="true"></i>
                        </div>
                        <div class="w3layouts_mail_grid_left2">
                            <br>
                            <h3>QUÀ TẶNG</h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>

            </div>
        </div>
        <!--grids-->
        <!-- footer -->
        <div class="footer">
            <div class="footer_agile_inner_info_w3l">
                <div class="col-md-3 footer-left">
                    <h2><a href="home"><span>M</span>angosteen </a></h2>
                    <p>Lorem ipsum quia dolor
                        sit amet, consectetur, adipisci velit, sed quia non 
                        numquam eius modi tempora.</p>
                    <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                        <li><a href="#" class="facebook">
                                <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="twitter"> 
                                <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="instagram">
                                <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                        <li><a href="#" class="pinterest">
                                <div class="front"><i class="fa fa-linkedin" aria-hidden="true"></i></div>
                                <div class="back"><i class="fa fa-linkedin" aria-hidden="true"></i></div></a></li>
                    </ul>
                </div>
                <div class="col-md-9 footer-right">
                    <div class="sign-grds">
                        <div class="col-md-4 sign-gd">
                            <h4>Các trang <span></span> </h4>
                            <ul>
                                li><a href="home">Trang Chủ</a></li>
                                <li><a href="shop-now">Sản phẩm</a></li>
                                <li><a href="about">Mangosteen</a></li>
                                <!--                                <li><a href="typography.html">Short Codes</a></li>-->
                                <li><a href="contact">Liên Hệ</a></li>
                            </ul>
                        </div>

                        <div class="col-md-5 sign-gd-two">
                            <h4>Liên Hệ <span>Mangosteen</span></h4>
                            <div class="w3-address">
                                <div class="w3-address-grid">
                                    <div class="w3-address-left">
                                        <i class="fa fa-phone" aria-hidden="true"></i>
                                    </div>
                                    <div class="w3-address-right">
                                        <h6>Số điện thoại</h6>
                                        <p>+1 234 567 8901</p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="w3-address-grid">
                                    <div class="w3-address-left">
                                        <i class="fa fa-envelope" aria-hidden="true"></i>
                                    </div>
                                    <div class="w3-address-right">
                                        <h6>Địa chỉ Email </h6>
                                        <p>Email : kimkim01@gmail.com</a></p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                                <div class="w3-address-grid">
                                    <div class="w3-address-left">
                                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                                    </div>
                                    <div class="w3-address-right">
                                        <h6>Địa chỉ</h6>
                                        <p>Số 32, Đường Hùng Vương, phường Nam Thành, tp Ninh Bình. 

                                        </p>
                                    </div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3 sign-gd flickr-post">
                        </div>
                        <div class="clearfix"></div>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="agile_newsletter_footer">


                    <div class="clearfix"></div>
                </div>
                <!--                <p class="copy-right">&copy 2017 Elite shoppy. All rights reserved | Design by <a href="http://w3layouts.com/">W3layouts</a></p>-->
            </div>
        </div>
        <!-- //footer -->

        <!-- login -->
        <div class="modal fade" id="myModal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content modal-info">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                    </div>
                    <div class="modal-body modal-spa">
                        <div class="login-grids">
                            <div class="login">
                                <div class="login-bottom">
                                    <h3>Đăng kí miễn phí</h3>
                                    <form>
                                        <div class="sign-up">
                                            <h4>Email :</h4>
                                            <input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Type here';
                                                    }" required="">	
                                        </div>
                                        <div class="sign-up">
                                            <h4>Password :</h4>
                                            <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <h4>Re-type Password :</h4>
                                            <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">

                                        </div>
                                        <div class="sign-up">
                                            <input type="submit" value="REGISTER NOW" >
                                        </div>

                                    </form>
                                </div>
                                <div class="login-right">
                                    <h3>Sign in with your account</h3>
                                    <form>
                                        <div class="sign-in">
                                            <h4>Email :</h4>
                                            <input type="text" value="Type here" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Type here';
                                                    }" required="">	
                                        </div>
                                        <div class="sign-in">
                                            <h4>Password :</h4>
                                            <input type="password" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {
                                                        this.value = 'Password';
                                                    }" required="">
                                            <a href="#">Forgot password?</a>
                                        </div>
                                        <div class="single-bottom">
                                            <input type="checkbox"  id="brand" value="">
                                            <label for="brand"><span></span>Remember Me.</label>
                                        </div>
                                        <div class="sign-in">
                                            <input type="submit" value="SIGNIN" >
                                        </div>
                                    </form>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <p>By logging in you agree to our <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- //login -->
        <a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
        <!-- js -->
        <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
        <!-- //js -->	
        <!-- cart-js -->
        <script src="js/minicart.min.js"></script>
        <script>
                                                // Mini Cart
                                                paypal.minicart.render({
                                                    action: '#'
                                                });

                                                if (~window.location.search.indexOf('reset=true')) {
                                                    paypal.minicart.reset();
                                                }
        </script>

        <!-- //cart-js --> 

        <!-- stats -->
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.countup.js"></script>
        <script>
                                                $('.counter').countUp();
        </script>
        <!-- //stats -->
        <!-- start-smoth-scrolling -->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/jquery.easing.min.js"></script>
        <script type="text/javascript">
                                                jQuery(document).ready(function ($) {
                                                    $(".scroll").click(function (event) {
                                                        event.preventDefault();
                                                        $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1000);
                                                    });
                                                });
        </script>
        <!-- here stars scrolling icon -->
        <script type="text/javascript">
            $(document).ready(function () {
                /*
                 var defaults = {
                 containerID: 'toTop', // fading element id
                 containerHoverID: 'toTopHover', // fading element hover id
                 scrollSpeed: 1200,
                 easingType: 'linear' 
                 };
                 */

                $().UItoTop({easingType: 'easeOutQuart'});

            });
        </script>
        <!-- //here ends scrolling icon -->

        <!-- for bootstrap working -->
        <script type="text/javascript" src="js/bootstrap.js"></script>
    </body>
</html>

