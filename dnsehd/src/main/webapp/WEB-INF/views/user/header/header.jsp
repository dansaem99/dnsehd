<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>main</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/ashion/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/style.css" type="text/css">
    
    <!-- Change Text Color and Shadow Start --> 
    <style>
       .categories__text h1,
       .categories__text h4,
       .categories__text p,
       .categories__text a {
           color: #ffffff; 
           text-shadow: 1px 1px 1px #000000;
       }
   </style>
   
   <!-- Sneat's Static files for Alarm Start -->
    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/admin/sneat/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/admin/sneat/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/admin/sneat/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/admin/sneat/assets/js/config.js"></script>
    
        <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/admin/sneat/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="/admin/sneat/assets/vendor/libs/popper/popper.js"></script>
    <script src="/admin/sneat/assets/vendor/js/bootstrap.js"></script>
    <script src="/admin/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/admin/sneat/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="/admin/sneat/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
       
   <!-- Sneat's Static files for Alarm End -->

</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Offcanvas Menu Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="offcanvas-menu-wrapper">
        <div class="offcanvas__close">+</div>
        <ul class="offcanvas__widget">
            <li><a href="#"><i class="fa fa-solid fa-bell"></i>
                <div class="tip">2</div>
            </a></li>
            <li><a href="mypage"><i class="fa fa-solid fa-user"></i>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="main"><img src="/addedImg/dnsehd_small_logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="login">로그인</a>
            <a href="register">회원가입</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="main"><img src="/addedImg/dnsehd_small_logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 text-center">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="main">Home</a></li>
                            <li><a href="class">수업조회</a></li>
                            <li><a href="teacher">강사조회</a></li>
                            <li><a href="calendar">일정관리</a></li>
                            <li>수업후기
                               <ul class="dropdown">
                                  <li><a href="addReview">수업후기등록</a></li>
                                  <li><a href="review">전체수업후기</a></li>
                               </ul>
                            </li>
                            <li>공지 & FAQ
                                <ul class="dropdown">
                                  <li><a href="notice">공지사항</a></li>
                                  <li><a href="faq">자주묻는질문</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__right">
                        <div class="header__right__auth">
                           <c:choose>
                              <c:when test="${sessionScope.memberId eq null}">
                                  <a href="login">로그인</a>
                                  <a href="register">회원가입</a>
                              </c:when>
                              <c:otherwise>
                                  <a href="#">수정하기</a>
                                  <a href="#">탈퇴하기</a>
                                  <a href="#">로그아웃</a>
                              </c:otherwise>
                            </c:choose>
                        </div>
                        <ul class="header__right__widget">
                            <li>
                               <i class="fa fa-solid fa-bell" data-bs-toggle="dropdown"></i>
                               <ul class="dropdown-menu dropdown-menu-end">
                                 <li>
                               <div class="alert alert-primary alert-dismissible" role="alert">
                                      This is a primary dismissible alert — check it out!
                                      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                 </li>
                                 <li>
                               <div class="alert alert-primary alert-dismissible" role="alert">
                                      This is a primary dismissible alert — check it out!
                                      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                 </li>
                                 <li>
                             <div class="alert alert-primary alert-dismissible" role="alert">
                                      This is a primary dismissible alert — check it out!
                                      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
                                    </div>
                                 </li>
                               </ul>
                            </li>
                            <li><a href="mypage"><i class="fa fa-solid fa-user"></i>
                                <div class="tip">2</div>
                            </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="canvas__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

</body>
</html>