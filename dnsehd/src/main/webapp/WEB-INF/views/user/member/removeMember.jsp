<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Delete my account</title>

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
    	$(function() {
    		
    		$("#confirmDelete").keyup(function(){
    			if ("${sessionScope.memberId}/탈퇴" == $(this).val()) {
    				$("[type='submit']").prop("disabled" , false);
    			}
    			else {
    				$("[type='submit']").prop("disabled" , true);
    			}	    			
    		});
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
                        <span>Delete account</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
	
	<!-- Delete Account Section -->
    <section class="checkout spad">
        <div class="container">
            <form action="/removeMember" method="post" class="checkout__form">
                <div class="row">
                    <div class="col-lg-12">
                        <h5>DNSEHD 서비스의 회원을 정말로 <span style="color:red;">탈퇴</span>하시겠습니까?</h5>
                       	<div class="row">
                            <div class="col-lg-12 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>진한 글씨(<strong>${sessionScope.memberId}/탈퇴</strong>)를 입력하세요.</p>
                                    <p>
                                    	<input type="text" id="confirmDelete" name="confirmDelete" placeholder="위의 글자를 입력하세요." />
                                	</p>
                                </div>
                            </div>
                            <div class="col-lg-4 col-md-6 col-sm-6 mx-auto" >
		                        <div class="checkout__order__deleteAccount">
		                            <input type="submit" class="site-btn" value="탈퇴하기" disabled>
		                            <div class="mb-4"></div>
		                            <input type="button" class="site-btn" value="취소하기" onclick="location.href='/mypage'">
		                        </div>   
                            </div>
                        </div>
                     </div>
                </div>
            </form>
        </div>
    </section>
	
	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
</html>