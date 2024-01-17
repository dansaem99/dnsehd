<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>class</title>

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
                        <a href="main"><i class="fa fa-home"></i> Home</a>
                        <span>Class</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>수업 방식</h4>
                            </div>
                            <div class="size__list">
                                <label for="전체수업">
                                    전체 수업
                                    <input type="checkbox" id="전체수업">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="개인레슨">
                                    개인 레슨
                                    <input type="checkbox" id="개인레슨">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="그룹수업">
                                    그룹 수업
                                    <input type="checkbox" id="그룹수업">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="시설이용">
                                    시설 이용
                                    <input type="checkbox" id="시설이용">
                                    <span class="checkmark"></span>
                                </label>
                                <label for="할인혜택 수업">
                                    할인혜택 수업
                                    <input type="checkbox" id="할인혜택 수업">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>원하는 수업 검색</h4>
                            </div>
			                <div class="footer__newslatter">
			                    <form action="#">
			                        <input type="text" class="form-control" name="searchClass" id="searchClass" placeholder="찾으시는 수업명" aria-describedby="textHelp" required/>
			                    </form>
			                </div>
                        </div>
                        <div class="sidebar__filter">
                            <div class="section-title">
                                <h4>수강료 범위 선택</h4>
                            </div>
                            <div class="filter-range-wrap">
                                <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                data-min="100" data-max="200"></div>
                                <div class="range-slider">
                                    <div class="price-input">
                                        <p>Price:</p>
                                        <input type="text" id="minamount">
                                        <input type="text" id="maxamount">
                                    </div>
                                </div>
                            </div>
                            <a href="#">필터</a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="row">
                    	<c:forEach var="classDTO" items="${classList }">
	                        <div class="col-lg-4 col-md-6">
	                            <div class="product__item">
	                                <div class="product__item__pic set-bg" data-setbg="/addedImg/pt_1.jpg">
	                                    <div class="label new">New</div>
	                                    <ul class="product__hover">
	                                        <li><a href="/addedImg/pt_1.jpg" class="image-popup"><span class="arrow_expand"></span></a></li>
	                                        <li><a href="#"><span class="icon_heart_alt"></span></a></li>
	                                        <li><a href="#"><span class="icon_bag_alt"></span></a></li>
	                                    </ul>
	                                </div>
	                                <div class="product__item__text">
	                                    <h6><a href="classDetail?classNo=${classDTO.classNo }">${classDTO.classNm }</a></h6>
	                                    <div class="rating">
	                                        <i class="fa fa-star"></i>
	                                        <i class="fa fa-star"></i>
	                                        <i class="fa fa-star"></i>
	                                        <i class="fa fa-star"></i>
	                                        <i class="fa fa-star"></i>
	                                    </div>
	                                    <div class="product__price">${classDTO.classPrice }</div>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                        <div class="col-lg-12 text-center">
                            <div class="pagination__option">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-angle-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>