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
	<jsp:include page="header.jsp"></jsp:include>
	
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="main"><i class="fa fa-home"></i> Home</a>
                        <a href="review">Review</a>
                        <span>강남역 필라테스 수업 듣고 체중 5Kg 감량!</span>
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
                            <img src="/addedImg/pilates_1.jpg" alt="">
                            <div class="blog__details__item__title">
                                <span class="tip">Street style</span>
                                <h4>강남역 필라테스 수업 듣고 체중 5Kg 감량!</h4>
                                <ul>
                                    <li>by <span>Ema Timahe</span></li>
                                    <li>Seb 17, 2019</li>
                                    <li>39 Comments</li>
                                </ul>
                            </div>
                        </div>
                        <div class="blog__details__desc">
                            <p>맨날 야식으로 치킨 먹고, 족발 먹다가 살쪘는데 필라테스 다니면서 건강이 달라지네요.
                            	몸의 자세가 매우 좋아져요. 어깨를 쭉 피려고 의식해도, 
                            	근육이 없으면 굽어지게 되잖아요. 자세가 굉장히 좋아졌습니다.</p>
                            <p>그리고 트레이너 분들도 이 사이트에서 많이 검색해봤는데
                                친절하고 좋으세요.</p>
                        </div>
                        <div class="blog__details__btns">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__details__btn__item">
                                        <h6><a href="#"><i class="fa fa-angle-left"></i> 이전 게시물</a></h6>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__details__btn__item blog__details__btn__item--next">
                                        <h6><a href="#">다음 게시물 <i class="fa fa-angle-right"></i></a></h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="blog__details__comment">
                            <h5>리뷰에 대해 궁금한 점이 있으신가요?</h5>
                            <a href="#" class="leave-btn">댓글을 남겨보세요.</a>
                            <div class="blog__comment__item">
                                <div class="blog__comment__item__pic">
                                    <i class="fa fa-regular fa-user" style="font-size: 46px;"></i>
                                </div>
                                <div class="blog__comment__item__text">
                                    <h6>유저1</h6>
                                    <p>여기 시설 좋은가요?</p>
                                    <ul>
                                        <li><i class="fa fa-clock-o"></i> Seb 17, 2019</li>
                                        <li><i class="fa fa-heart-o"></i> 12</li>
                                        <li><i class="fa fa-share"></i> 1</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog__comment__item blog__comment__item--reply">
                                <div class="blog__comment__item__pic">
                                    <i class="fa fa-regular fa-user" style="font-size: 46px;"></i>
                                </div>
                                <div class="blog__comment__item__text">
                                    <h6>유저2</h6>
                                    <p>아침 일찍 수업 듣고 회사갑니다.
                                    시설 괜찮고, 강사분 친절하세요ㅎㅎ</p>
                                    <ul>
                                        <li><i class="fa fa-clock-o"></i> Seb 17, 2019</li>
                                        <li><i class="fa fa-heart-o"></i> 12</li>
                                        <li><i class="fa fa-share"></i> 1</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="blog__comment__item">
                                <div class="blog__comment__item__pic">
                                    <i class="fa fa-regular fa-user" style="font-size: 46px;"></i>
                                </div>
                                <div class="blog__comment__item__text">
                                    <h6>유저3</h6>
                                    <p>지인 추천 받아서 갔는데, 생각보다 그냥 그렇습니다.
                                    수강 등록한 것만 듣고 마무리 예정..</p>
                                    <ul>
                                        <li><i class="fa fa-clock-o"></i> Seb 17, 2019</li>
                                        <li><i class="fa fa-heart-o"></i> 12</li>
                                        <li><i class="fa fa-share"></i> 1</li>
                                    </ul>
                                </div>
                            </div>
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
                                <li><a href="#">수업명 <span>단체 필라테스 레슨</span></a></li>
                                <li><a href="#">강사명 <span>기보배</span></a></li>
                                <li><a href="#">수강료 <span>40만원/월</span></a></li>
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <div class="section-title">
                                <h4>베스트 리뷰</h4>
                            </div>
                            <a href="#" class="blog__feature__item">
                                <div class="blog__feature__item__pic">
                                    <img src="/ashion/img/blog/sidebar/fp-1.jpg" alt="">
                                </div>
                                <div class="blog__feature__item__text">
                                    <h6>강남역 필라테스 수업 듣고 체중 5Kg 감량!</h6>
                                    <span>Seb 17, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__feature__item">
                                <div class="blog__feature__item__pic">
                                    <img src="/ashion/img/blog/sidebar/fp-2.jpg" alt="">
                                </div>
                                <div class="blog__feature__item__text">
                                    <h6>식단 관리 효과 쏠쏠하네요ㅋㅋ</h6>
                                    <span>Seb 17, 2019</span>
                                </div>
                            </a>
                            <a href="#" class="blog__feature__item">
                                <div class="blog__feature__item__pic">
                                    <img src="/ashion/img/blog/sidebar/fp-3.jpg" alt="">
                                </div>
                                <div class="blog__feature__item__text">
                                    <h6>운동 부족 직장인, 이제 운동합니다!!</h6>
                                    <span>Seb 17, 2019</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

	<!-- footer section -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>