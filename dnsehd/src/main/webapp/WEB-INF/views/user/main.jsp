<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    
</head>

<body>
	<!-- header section -->
	<jsp:include page="header/header.jsp"></jsp:include>
	
	<!-- Banner Section Begin -->
	<section class="banner set-bg" data-setbg="/addedImg/banner.jpg">
	    <div class="container">
	        <div class="row">
	            <div class="col-xl-7 col-lg-8 m-auto">
	                <div class="banner__slider owl-carousel" id="eventList">
	                		<c:forEach var="eventDTO" items="${eventList }">
		                    <div class="banner__item">
		                        <div class="banner__text">
		                            <h1>${eventDTO.eventTitle }</h1>
		                            <h4>${eventDTO.eventStartDt } ~ ${eventDTO.eventEndDt }</h4>
		                            <a href="eventDetail?eventNo=${eventDTO.eventNo }">예약하러가기</a>
		                        </div>
		                    </div>
	                    </c:forEach>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<!-- Banner Section End -->


	<!-- Product Section Begin -->
	<section class="product spad">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-4 col-md-4">
	                <div class="section-title">
	                    <h4>등록된 최신 수업</h4>
	                </div>
	            </div>
	        </div>
	        <div class="row property__gallery">
            	<c:choose>
	                <c:when test="${empty classList }">
	               		<div class='product__item'>
	               			<h3>조회된 수업이 없습니다.</h3>
	               		</div>
	                </c:when>
                	<c:otherwise>
	                	<c:forEach var="classMap" items="${classList }">
				            <div class="col-lg-3 col-md-4 col-sm-6 mix women">
				                <div class="product__item">
				                    <div class="product__item__pic set-bg" data-setbg="/classImg?fileName=${classMap.classImgUUID }">
				                        <input type="hidden" name="classNo" value="${classMap.classNo }"/>
				                        <div class="label new">New</div>
				                    </div>
				                    <div class="product__item__text">
				                        <h6><a href="/classDetail?classNo=${classMap.classNo }">${classMap.classNm }</a></h6>
				                            <div class="rating">
					                            <c:forEach begin="1" end="${classMap.reviewScore}">
					                                <i class="fa fa-star"></i>
					                            </c:forEach>
				                           </div>
				                        <div class="product__price"><fmt:formatNumber value="${classMap.classPrice }"/></div>
				                    </div>
				                </div>
				            </div>
            			</c:forEach>
            		</c:otherwise>
            	</c:choose>
	        </div>
	    </div>
	</section>
	<!-- Product Section End -->
	
	<!-- Services Section Begin -->
	<section class="services spad">
	    <div class="container">
	        <div class="row">
	            <div class="col-lg-3 col-md-4 col-sm-6">
	                <div class="services__item">
	                    <i class="fa fa-regular fa-star"></i>
	                    <h6>원하는 수업 및 강사 조회</h6>
	                    <p>다양한 스포츠와 트레이너</p>
	                </div>
	            </div>
	            <div class="col-lg-3 col-md-4 col-sm-6">
	                <div class="services__item">
	                    <i class="fa fa-money"></i>
	                    <h6>상세 가격과 이벤트 안내</h6>
	                    <p>이벤트와 합리적인 가격</p>
	                </div>
	            </div>
	            <div class="col-lg-3 col-md-4 col-sm-6">
	                <div class="services__item">
	                    <i class="fa fa-solid fa-list"></i>
	                    <h6>일정 및 식단 관리</h6>
	                    <p>운동은 꾸준히, 식단은 건강하게</p>
	                </div>
	            </div>
	            <div class="col-lg-3 col-md-4 col-sm-6">
	                <div class="services__item">
	                    <i class="fa fa-regular fa-user"></i>
	                    <h6>솔직한 리뷰 조회</h6>
	                    <p>고객의 소리를 듣다</p>
	                </div>
	            </div>
	        </div>
	    </div>
	</section>
	<!-- Services Section End -->

	
	
	<!-- footer section -->
	<jsp:include page="footer/footer.jsp"></jsp:include>
	
</body>
</html>