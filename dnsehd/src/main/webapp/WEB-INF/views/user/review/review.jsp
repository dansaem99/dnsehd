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
    <title>review</title>

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
                        <span>Review</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
            	<c:forEach var="reviewMap" items="${reviewList }">
	                <div class="col-lg-4 col-md-4 col-sm-6">
	                    <div class="blog__item">
	                        <div class="blog__item__pic large__item set-bg" data-setbg="/reviewImg?fileName=${reviewMap.reviewImgUUID }"></div>
	                        <input type="hidden" name="reviewNo" value="${reviewMap.reviewNo }">
	                        <div class="blog__item__text">
	                            <h6><a href="/reviewDetail?reviewNo=${reviewMap.reviewNo }">${reviewMap.reviewTitle }</a></h6>
	                            <ul>
	                                <li>작성자 <span>${reviewMap.memberId }</span></li>
	                                <li>
	                                	<fmt:formatDate value="${reviewMap.reviewDt }" pattern="yyyy-MM-dd" />
	                                </li>
	                            </ul>
	                        </div>
	                    </div>
	                </div>
	            </c:forEach>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    
	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>