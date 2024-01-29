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
            <li><a href="/mypage"><i class="fa fa-solid fa-user"></i>
                <div class="tip">2</div>
            </a></li>
        </ul>
        <div class="offcanvas__logo">
            <a href="/"><img src="/addedImg/dnsehd_small_logo.png" alt=""></a>
        </div>
        <div id="mobile-menu-wrap"></div>
        <div class="offcanvas__auth">
            <a href="/login">로그인</a>
            <a href="/register">회원가입</a>
        </div>
    </div>
    <!-- Offcanvas Menu End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-2">
                    <div class="header__logo">
                        <a href="/"><img src="/addedImg/dnsehd_small_logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-5 col-lg-6 text-center">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="/">Home</a></li>
                            <li><a href="/class">수업조회</a></li>
                            <li><a href="/teacher">강사조회</a></li>
                            <li><a href="/calendar">일정관리</a></li>
                            <li>수업후기
                               <ul class="dropdown">
                                  <li><a href="/addReview">수업후기등록</a></li>
                                  <li><a href="/review">전체수업후기</a></li>
                               </ul>
                            </li>
                            <li>공지 & FAQ
                                <ul class="dropdown">
                                  <li><a href="/notice">공지사항</a></li>
                                  <li><a href="/faq">자주묻는질문</a></li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3" align="center">
                     <nav class="header__menu">
                        <div class="header__right__auth">
                           <c:choose>
                              <c:when test="${sessionScope.memberId eq null}">
                                  <a href="/login">로그인</a>
                                  <a href="/register">회원가입</a>
                              </c:when>
                              <c:otherwise>
		                          <ul class="header__right__widget">
		                          	  <li>"${sessionScope.memberId}"님 환영합니다.</li>
		                              <li>
				                          <ul>
				                              <li><i class="fa fa-solid fa-user"></i>
				                                 <ul class="dropdown">
				                                    <li><a href="/mypage">마이페이지</a></li>
				                                    <li><a href="/reservedClass?memberId=${sessionScope.memberId }">내가 예약한 수업</a></li>
												    <li><a href="/myReview">내가 작성한 후기</a></li>
												    <li><a href="/logout">로그아웃</a></li>
				                                 </ul>
				                              </li>
				                          </ul>
		                              </li>
		                          </ul>
                              </c:otherwise>
                            </c:choose>
                        </div>
                    </nav>
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
