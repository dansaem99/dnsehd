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
    <script src="/ckeditor5-build-classic/ckeditor.js"></script>  

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
 
 	<style>
 	.ck-editor__editable {
 		min-height: 300px;
 	}
 	</style>    
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
                        <a href="/modifyMyReview"><span>Modify My Review</span></a>
                    	<span>Delete My Review</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->    

	<!-- Delete Account Section -->
    <section class="checkout spad">
        <div class="container">
            <form action="/removeMyReview" method="post" class="checkout__form">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h5>회원님이 작성하신 후기를 정말로 <span style="color:red;">삭제</span>하시겠습니까?</h5>
		                <input type="hidden" name="reviewNo" value="${reviewNo }">
		                <input type="submit" class="site-btn" value="삭제하기">
                     </div>
                </div>
            </form>
        </div>
    </section>

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>
</html>