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
    <title>noticeDetail</title>

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
                        <a href="notice">공지사항</a>
                        <span>상세정보</span>
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
                            <tbody>
                                <tr>
                                    <th>제목</th>
                                    <td class="notice__item">
                                        <div class="notice__item__title">
                                            <h6>${noticeDTO.noticeTitle }</h6>
                                        </div>
                                    </td>
                                    <th>공지번호</th>
                                    <td class="notice__no">${noticeDTO.noticeNo }</td>
                                </tr>
                                <tr>
                                    <th>작성자</th>
                                    <td class="notice__item">
                                        <div class="notice__item__writer">
                                            <h6>${noticeDTO.adminId }</h6>
                                        </div>
                                    </td>
                                    <th>작성일</th>
                                    <td class="notice__date"><fmt:formatDate value="${noticeDTO.noticeDt }" pattern="yyyy-MM-dd"/></td>
                                </tr>
                                <tr>
                                	<td colspan="4">${noticeDTO.noticeContent }</td>
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
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>