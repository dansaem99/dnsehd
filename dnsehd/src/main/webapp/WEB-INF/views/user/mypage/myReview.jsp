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
    <title>mypage</title>

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
	
	<script src="/jquery/jquery-3.6.1.min.js"></script>
  	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	
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
                        <span>My Reviews</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    
    <!-- List of Reviews -->
    <section class="checkout spad">
        <div class="container">
            <form action="/myReview" method="post" class="checkout__form">
                <div class="row">
                    <div class="col-lg-12">
                        <h5>내가 쓴 후기 조회</h5>
                        <section class="shop__cart__table" style="text-align: center;">
		                    <div class="shop__cart__table">
		                        <table>
		                            <thead>
		                                <tr>
		                                    <th>후기 제목</th>
		                                    <th>후기 평점</th>
		                                    <th>후기 작성일</th>
		                                    <th>후기 상세</th>
		                                    <th></th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                            	<c:forEach var="reviewDTO" items="${myReviewList }">
			                                <tr>
			                                    <td class="notice__no" >${reviewDTO.reviewTitle }</td>
			                                    <td class="notice__item">
			                                        <div class="notice__item__title">
			                                            <h6>${reviewDTO.reviewScore } 점</h6>
			                                        </div>
			                                    </td>
			                                    <td class="notice__item">
			                                        <div class="notice__item__writer">
			                                            <h6><fmt:formatDate value="${reviewDTO.reviewDt }" pattern="yyyy-MM-dd" /></h6>
			                                        </div>
			                                    </td>
			                                    <td class="notice__date" style="text-align: center;">
			                                    	<input type="button" class="site-btn" value="상세조회" onclick="location.href='/modifyMyReview?reviewNo=${reviewDTO.reviewNo }'">
			                                    </td>
			                                </tr>
			                             </c:forEach>
		                            </tbody>
		                        </table>
		                    </div>
				    	</section>
                     </div>
                </div>
            </form>
        </div>
    </section>
    
	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>