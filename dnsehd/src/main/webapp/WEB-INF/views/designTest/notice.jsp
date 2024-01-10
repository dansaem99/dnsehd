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
    <title>notice</title>

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
                        <span>Notice</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- Shop Cart Section Begin -->
    <section class="shop-cart spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="shop__cart__table">
                        <table>
                            <thead>
                                <tr>
                                    <th>공지번호</th>
                                    <th>제목</th>
                                    <th>작성자</th>
                                    <th>작성일</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="notice__no">1</td>
                                    <td class="notice__item">
                                        <div class="notice__item__title">
                                            <h6><a href="noticeDetail">신규 회원은 알림 확인 바랍니다.</a></h6>
                                        </div>
                                    </td>
                                    <td class="notice__item">
                                        <div class="notice__item__writer">
                                            <h6>최고 관리자</h6>
                                        </div>
                                    </td>
                                    <td class="notice__date">2024-01-01</td>
                                </tr>
                                <tr>
                                    <td class="notice__no">2</td>
                                    <td class="notice__item">
                                        <div class="notice__item__title">
                                            <h6><a href="#">휴면 회원 개인정보 약관입니다.</a></h6>
                                        </div>
                                    </td>
                                    <td class="notice__item">
                                        <div class="notice__item__writer">
                                            <h6>최고 관리자</h6>
                                        </div>
                                    </td>
                                    <td class="notice__date">2024-01-02</td>
                                </tr>
                                <tr>
                                    <td class="notice__no">3</td>
                                    <td class="notice__item">
                                        <div class="notice__item__title">
                                            <h6><a href="#">1월 할인 이벤트 모음입니다.</a></h6>
                                        </div>
                                    </td>
                                    <td class="notice__item">
                                        <div class="notice__item__writer">
                                            <h6>최고 관리자</h6>
                                        </div>
                                    </td>
                                    <td class="notice__date">2024-01-03</td>
                                </tr>
                                <tr>
                                    <td class="notice__no">4</td>
                                    <td class="notice__item">
                                        <div class="notice__item__title">
                                            <h6><a href="#">장기고객 감사 할인 혜택 안내입니다.</a></h6>
                                        </div>
                                    </td>
                                    <td class="notice__item">
                                        <div class="notice__item__writer">
                                            <h6>최고 관리자</h6>
                                        </div>
                                    </td>
                                    <td class="notice__date">2024-01-04</td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Shop Cart Section End -->

	<!-- footer section -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>