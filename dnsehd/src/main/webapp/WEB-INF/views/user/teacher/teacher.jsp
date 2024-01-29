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
    <title>teacher</title>

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
    
<script>
	
	$().ready(function(){
		
		$("#onePageViewCnt").val("${onePageViewCnt}");
		$("#searchKeyword").val("${searchKeyword}");
	});
	
	function getTeacherList(currentPageNumber) {
		var url = "/teacher"
			url += "?searchWord=" + $("#searchWord").val();
			url += "&onePageViewCnt=9";
			if (currentPageNumber != null) {
				url += "&currentPageNumber=" + currentPageNumber;
			}
		
			location.href = url;
			
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
                        <span>Teacher</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

	<!-- create test data -->
<!-- 
	<p align="center">
		<input type="button" value="테스트 데이터 생성" onclick="location.href='/addTeacherDummy'">
	</p>
 -->
     
    <!-- Shop Section Begin -->
    <section class="shop spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-3">
                    <div class="shop__sidebar">
                        <div class="sidebar__sizes">
                            <div class="section-title">
                                <h4>원하는 강사명 검색</h4>
                            </div>
			                <div class="footer__newslatter">
			                    <form action="#">
			                        <input type="text" class="form-control" name="searchWord" id="searchWord" placeholder="찾으시는 강사명" value="${searchWord }"/>
			                    </form>
			                </div>
                        	<div class="col-lg-3 text-center">
                        		<input type="button" value="검색" class="site-btn" onclick="getTeacherList()"/>
               				</div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9" id="teacherList">
                    <div class="row">
                    	<c:forEach var="teacherMap" items="${teacherList }">
	                        <div class="col-lg-4 col-md-6">
	                            <div class="product__item">
	                                <div class="product__item__pic set-bg" data-setbg="/teacherImg?fileName=${teacherMap.teacherImgUUID }">
	                                <input type="hidden" name="teacherNo" value="${teacherMap.teacherNo }"/>
	                                </div>
	                                <div class="product__item__text">
	                                    <h6>${teacherMap.teacherIntro } </h6>
	                                    <div class="product__price"><a href="/teacherDetail?teacherNo=${teacherMap.teacherNo }">${teacherMap.teacherNm } 트레이너</a></div>
	                                </div>
	                            </div>
	                        </div>
                        </c:forEach>
                    </div>
                    <div class="col-lg-12 text-center">
                        <div class="pagination__option">
                        	<c:if test="${startPage > 10}">
                            	<a href="javascript:getTeacherList(${startPage - 10})"><i class="fa fa-angle-left"></i></a>
                            </c:if>
                            <c:forEach var="i" begin="${startPage }" end="${endPage }">
	                            <a href="javascript:getTeacherList(${i })">${i }</a>
	                        </c:forEach>
	                        <c:if test="${endPage != allPageCnt && endPage >= 10}">
                            	<a href="javascript:getTeacherList(${startPage + 10})"><i class="fa fa-angle-right"></i></a>
                            </c:if>
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