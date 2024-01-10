<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>AddReview</title>
    <script src="/ckeditor/ckeditor.js"></script>  

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
                        <a href="home"><i class="fa fa-home"></i> Home</a>
                        <span>Post Review</span>
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
            <form action="/addReview" class="checkout__form">
                <div class="row">
                    <div class="col-lg-12">
                        <h5>user1 님의 후기</h5>
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="checkout__form__input">
                                    <p>후기 제목</p>
                                    <input type="text" placeholder=" 후기 제목을 입력해주세요." required>
                                </div>
                                <div class="checkout__form__input">
                                    <p>수강한 수업명</p>
                                    <input type="text" placeholder=" 수강한 수업명 또는 사용 시설명을 입력해주세요." required>
                                </div>
                                <div class="checkout__form__input">
                                    <p>후기 평점</p>
                                </div>
								<div class="size__btn">
								    <label for="1-btn" class="active">
								        <input type="radio" id="1-btn" name="rating">
								        1점
								    </label>
								    <label for="2-btn">
								        <input type="radio" id="2-btn" name="rating">
								        2점
								    </label>
								    <label for="3-btn">
								        <input type="radio" id="3-btn" name="rating">
								        3점
								    </label>
								    <label for="4-btn">
								        <input type="radio" id="4-btn" name="rating">
								        4점
								    </label>
								    <label for="5-btn">
								        <input type="radio" id="5-btn" name="rating" checked>
								        5점
								    </label>
								</div><br>
                                <div class="checkout__form__input">
                                    <p>* 수업, 운동시설, 강사님 등 자세한 이야기를 들려주세요. (욕설, 비방글은 삭제됩니다.)</p>
									<textarea rows="10" cols="120" name="reviewContent" required></textarea>
									<script>CKEDITOR.replace("reviewContent");</script>
                                </div>
                                <br><br>
							    <div class="col-lg-12 text-center">
							        <a href="main"><button type="submit" class="site-btn">후기 등록</button></a>
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