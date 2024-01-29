<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<jsp:include page="../header/header.jsp"></jsp:include>
	
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="/"><i class="fa fa-home"></i> Home</a>
                        <a href="review">Review</a>
                        <span>${reviewMap.reviewTitle }</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8">
                    <div class="blog__details__content">
                        <div class="blog__details__item">
                            <img src="/reviewImg?fileName=${reviewMap.reviewImgUUID }" alt="사진">f
                            <div class="blog__details__item__title">
                                <span class="tip">Street style</span>
                                <h4>${reviewMap.reviewTitle }</h4>
                                <ul>
                                    <li>작성자 <span>${reviewMap.memberId }</span></li>
                                    <li>
	                                    <fmt:formatDate value="${reviewMap.reviewDt }" pattern="yyyy-MM-dd" />
                                    </li>
                                    <li>수업 및 시설 평점 <span>${reviewMap.reviewScore } 점</span></li>
                                </ul>
                            </div>
                        </div>
                        <div class="blog__details__desc">
                            <p>${reviewMap.reviewContent }</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__item">
                            <div class="section-title">
                                <h4>수강한 수업 정보</h4>
                            </div>
                            <ul>
                                <li><a href="#">수업명 <span>${reviewMap.classNm }</span></a></li>
                                <li><a href="#">수강료 <span><fmt:formatNumber type="number" value="${reviewMap.payment}" pattern="#,##0"/></span></a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <div class="section-title">
                                <h4>최신 리뷰</h4>
                            </div>
                            <c:forEach var="reviewMap" items="${reviewList }" begin="0" end="2">
	                            <a href="/reviewDetail?reviewNo=${reviewMap.reviewNo}" class="blog__feature__item">
	                                <div class="blog__feature__item__pic">
	                                    <img src="/reviewImg?fileName=${reviewMap.reviewImgUUID }" width="100" height="80" alt="사진" >
	                                </div>
	                                <div class="blog__feature__item__text">
	                                    <h6>${reviewMap.reviewTitle }</h6>
	                                    <span>작성일 ${reviewMap.reviewDt }</span>
	                                    <span>작성자 ${reviewMap.memberId }</span>
	                                </div>
	                            </a>
	                         </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>