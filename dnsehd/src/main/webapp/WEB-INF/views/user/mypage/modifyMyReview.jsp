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
    <title>AddReview</title>

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
    	
	<script>
	    $(document).ready(function () {
	        var selectedResvNo = ${selectedResvNo}; 
	        $("#resvNo").val(selectedResvNo);
	    });
	</script> 
	
	<script>
	    $(document).ready(function () {
	        var selectedClassNo = ${selectedClassNo}; 
	        $("#classNo").val(selectedClassNo);
	    });
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
                        <a href="/myReview"><span>My Reviews</span></a>
                        <span>Modify My Review</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->    

    <!-- Checkout Section Begin -->
    <section class="checkout spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <h6 class="coupon__link">수강한 수업이나 운동 시설은 어떠셨나요? 고객님의 생생한 후기를 남겨주세요!</h6>
                </div>
            </div>
            <form action="/modifyMyReview" method="post" class="checkout__form" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-lg-12">
                        <h5>${memberId } 님의 후기</h5>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>후기 제목</p>
                                    <input type="text" name="reviewTitle" id="reviewTitle" value="${reviewMap.reviewTitle }" required>
                                    <input type="hidden" name="memberId" id="memberId" value="${sessionScope.memberId }">
                                </div>
								<div class="checkout__form__input">
								  <p>수강한 수업명</p>
									<select id="classNo" name="classNo" class="checkout__form__select">
										<c:forEach var="classDTO" items="${classList }">
											<option value="${classDTO.classNo }">${classDTO.classNm }</option>
										</c:forEach>
									</select>
								</div>
								<div class="checkout__form__input">
                                    <p>등록 정보 확인</p>
									<select id="resvNo" name="resvNo" class="checkout__form__select">
										<c:forEach var="reservationMap" items="${myReservationList }">
											<option value="${reservationMap.resvNo }">
												수업명 : ${reservationMap.classNm } / 
												수업 시간 : ${reservationMap.classTime } / 
												등록일 : <fmt:formatDate value="${reservationMap.resvDt }" pattern="yyyy-MM-dd" /> /
												수강료 : ${reservationMap.payment }
											</option>
										</c:forEach>
									</select>
                                </div>
                                <div class="checkout__form__input">
                                    <p>후기 평점</p>
                                </div>
								<div class="size__btn">
									<c:choose>
										<c:when test="${reviewMap.reviewScore == 1 }">
										    <label for="1-btn" class="active">
										        <input type="radio" id="reviewScore" name="reviewScore" value="1" checked="checked">
										        1점
										    </label>
										    <label for="2-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="2">
										        2점
										    </label>
										    <label for="3-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="3">
										        3점
										    </label>
										    <label for="4-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="4">
										        4점
										    </label>
										    <label for="5-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="5">
										        5점
										    </label>
									    </c:when>
										<c:when test="${reviewMap.reviewScore == 2 }">
										    <label for="1-btn" class="active">
										        <input type="radio" id="reviewScore" name="reviewScore" value="1">
										        1점
										    </label>
										    <label for="2-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="2" checked="checked">
										        2점
										    </label>
										    <label for="3-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="3">
										        3점
										    </label>
										    <label for="4-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="4">
										        4점
										    </label>
										    <label for="5-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="5">
										        5점
										    </label>
									    </c:when>
										<c:when test="${reviewMap.reviewScore == 3 }">
										    <label for="1-btn" class="active">
										        <input type="radio" id="reviewScore" name="reviewScore" value="1">
										        1점
										    </label>
										    <label for="2-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="2">
										        2점
										    </label>
										    <label for="3-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="3" checked="checked">
										        3점
										    </label>
										    <label for="4-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="4">
										        4점
										    </label>
										    <label for="5-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="5">
										        5점
										    </label>
									    </c:when>
										<c:when test="${reviewMap.reviewScore == 4 }">
										    <label for="1-btn" class="active">
										        <input type="radio" id="reviewScore" name="reviewScore" value="1">
										        1점
										    </label>
										    <label for="2-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="2">
										        2점
										    </label>
										    <label for="3-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="3">
										        3점
										    </label>
										    <label for="4-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="4" checked="checked">
										        4점
										    </label>
										    <label for="5-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="5">
										        5점
										    </label>
									    </c:when>
										<c:when test="${reviewMap.reviewScore == 5 }">
										    <label for="1-btn" class="active">
										        <input type="radio" id="reviewScore" name="reviewScore" value="1">
										        1점
										    </label>
										    <label for="2-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="2">
										        2점
										    </label>
										    <label for="3-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="3">
										        3점
										    </label>
										    <label for="4-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="4">
										        4점
										    </label>
										    <label for="5-btn">
										        <input type="radio" id="reviewScore" name="reviewScore" value="5" checked="checked">
										        5점
										    </label>
									    </c:when>
								    </c:choose>
								</div><br>
                                <div class="checkout__form__input">
                                    <p>* 수업, 운동시설, 강사님 등 자세한 이야기를 들려주세요. (욕설, 비방글은 삭제됩니다.)</p>
									<textarea rows="10" cols="125" name="reviewContent" id="reviewContent" required>${reviewMap.reviewContent }</textarea>
                                </div><br>
                                <div class="checkout__form__input">
                                    <p>사진 첨부</p>
                                    <input class="form-control" type="file" name="uploadProfile" id="uploadProfile" />
                                </div>
                                <div class="checkout__form__input">
                                    <p>기존 사진</p>
                                    <div><img src="/reviewImg?fileName=${reviewMap.reviewImgUUID }" width="300" height="200" alt="사진"></div>
                                </div><br>
                                <br><br>
							    <div class="col-lg-12 text-center">
							    	<input type="hidden" name="reviewNo" value="${reviewMap.reviewNo }">
							        <input type="submit" value="후기 수정" class="site-btn">
							        <input type="button" value="후기 삭제" class="site-btn" onclick="location.href='/removeMyReview?reviewNo=${reviewMap.reviewNo }'">
							    </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </section>
    <!-- Checkout Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
</html>