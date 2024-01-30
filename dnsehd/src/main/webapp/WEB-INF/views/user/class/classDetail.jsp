<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt"  uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>classDetail</title>

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
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
	<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
    
    <script src="/jquery/jquery-3.6.1.min.js"></script>
	<script>
		function reservationBtn() {
			
			var param = {
					"payment" : "${classMap.classPrice }",
					"memberId" : $("[name='memberId']").val(),
					"classNo" : "${classMap.classNo}"
					
			}
			
			$.ajax({
				type : "post",
				url : "addReservation",
				data : param,
				success : function(data) {
					Swal.fire({
					      icon: 'success',
					      text: '예약이 완료되었습니다.',
				    });
				}
			});
			
			 
		}
	</script>
    
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
                        <a href="class">Class </a>
                        <span>${classMap.classNm }</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Product Details Section Begin -->
    <section class="product-details spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-4 col-sm-6 mix cosmetic">
	                <div class="product__item">
	                    <div class="product__item__trainer__pic set-bg" data-setbg="/classImg?fileName=${classMap.classImgUUID }">
	                        <ul class="product__hover">
	                            <li><a href="/addedImg/trainer_1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
	                        </ul>
	                    </div>
	                </div>
                </div>
                <div class="col-lg-6">
                    <div class="product__details__text">
                        <h3>${classMap.classNm } <span>강사명: ${classMap.teacherNm }</span></h3>
                        <div class="rating">
                        		<c:forEach begin="1" end="${reviewScore }">
                        			<i class="fa fa-star"></i>
                        		</c:forEach>
                        </div>
                        <div class="product__details__price" style="color: blue;">
                        		<fmt:formatNumber value="${classMap.classPrice }"/>
                        </div>
                        <h4>${classMap.classTime }</h4><br>
                        <div class="product__details__widget">
                            <ul>
                                <li>
                                    <span>현재 수강신청 인원:</span>
                                    <p>3 / ${classMap.classLimit }</p>
                                </li>
                            </ul>
                        </div>
                        <br>
                        <div class="product__details__button">
                            <a href="javascript:reservationBtn()" class="cart-btn"><span class="icon_bag_alt"></span> 수강 신청하기</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12">
                    <div class="product__details__tab">
                        <ul class="nav nav-tabs" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab">수업 상세 정보</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab">강사 이력</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab">리뷰</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tabs-1" role="tabpanel">
                                <h6>수업 상세 정보</h6>
                                <p>${classMap.classContent }</p>
                            </div>
                            <div class="tab-pane" id="tabs-2" role="tabpanel">
                                <h6>강사 이력</h6>
                                <p>${classMap.teacherCareer }</p>
                            </div>
                            <div class="tab-pane" id="tabs-3" role="tabpanel">
                                <h6>리뷰</h6>
                                <c:forEach var="reviewMap" items="${reviewList }">
                                		<h5>${reviewMap.reviewTitle }</h5>
                                		<p>${reviewMap.reviewContent }</p>
                                </c:forEach>
                            </div>
                            <input type="hidden" name="memberId" value="${sessionScope.memberId }"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Product Details Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>