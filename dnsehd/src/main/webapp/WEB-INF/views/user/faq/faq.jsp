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
    <title>faq</title>

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
    
    <!-- sbadminPro config -->
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Fluid Layout</title>
    <link href="/sbadminPro/css/styles.css" rel="stylesheet" />
    <link rel="icon" type="image/x-icon" href="/sbadminPro/assets/img/favicon.png" />
    <script data-search-pseudo-elements defer src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/js/all.min.js" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.28.0/feather.min.js" crossorigin="anonymous"></script>
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
                        <span>FAQ</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->

    <!-- sbadminPro fluid layout Start --> 
    
    <div class="faq" id="faqList">
	    <div class="container-fluid">
	        <div class="row">
	            <div class="col-lg-8 col-md-4 col-sm-4 mx-auto">
		            <c:forEach var="faqDTO" items="${faqList }">
		            	<div class="mb-4"></div>
				        <div class="card mt-n300">
				            <div class="card-header">${faqDTO.faqQuestion }</div>
				            <div class="card-body">${faqDTO.faqAnswer }</div>
				        </div>
				    </c:forEach>
		        </div>
		     </div>
	    </div>
    </div>
    <div class="mb-15"></div>
    <!-- sbadminPro fluid layout End -->     

	<div class="mb-40"></div>
			        
	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
	
	<!-- sbadminPro js -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
    <script src="/sbadminPro/js/scripts.js"></script>
</body>

</html>