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
    <title>mypage</title>

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
  	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>

	function execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	            // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
	            var extraRoadAddr = ''; // 도로명 조합형 주소 변수
	
	            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	            if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                extraRoadAddr += data.bname;
	            }
	            // 건물명이 있고, 공동주택일 경우 추가한다.
	            if (data.buildingName !== '' && data.apartment === 'Y'){
	               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	            }
	            // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	            if (extraRoadAddr !== ''){
	                extraRoadAddr = ' (' + extraRoadAddr + ')';
	            }
	            // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
	            if (fullRoadAddr !== ''){
	                fullRoadAddr += extraRoadAddr;
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('zipcode').value = data.zonecode; //5자리 새우편번호 사용
	            document.getElementById('roadAddress').value = fullRoadAddr;
	            document.getElementById('jibunAddress').value = data.jibunAddress;
	
	        }
	    }).open();
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
                        <span>Mypage</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    
    <!-- Modify Member's Information -->
    <section class="checkout spad">
        <div class="container">
            <form action="/mypage" method="post" class="checkout__form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>회원 정보</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 아이디 <span>*</span></p>
                                    <input type="text" id="memberId" name="memberId" value="${memberDTO.memberId }" readonly/>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 비밀번호 변경 <span>*</span></p>
                                    <input type="text" id="memberPw" name="memberPw">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 이름 <span>*</span></p>
                                    <input type="text" id="memberNm" name="memberNm" value="${memberDTO.memberNm }">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__mypage__input">
                                    <p>회원 성별 <span>*</span></p>
                                    <c:choose>
                                    	<c:when test="${memberDTO.sex eq 'm'}">
		                                    <input type="radio" id="sex" name="sex" value="m" checked="checked"/>남성&emsp;&emsp;&emsp;
		                                    <input type="radio" id="sex" name="sex" value="w" />여성  
                                    	</c:when>
                                    	<c:otherwise>
                                    		<input type="radio" id="sex" name="sex" value="m" />남성&emsp;&emsp;&emsp;
		                                    <input type="radio" id="sex" name="sex" value="w" checked="checked"/>여성  
                                    	</c:otherwise>
                                    </c:choose>
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 생년월일 <span>*</span></p>
                                    <input type="text" id="dateBirth" name="dateBirth" value="${memberDTO.dateBirth }">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 전화번호 <span>*</span></p>
                                    <input type="text" id="hp" name="hp" value="${memberDTO.hp }">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 이메일 <span>*</span></p>
                                    <input type="email" id="email" name="email" value="${memberDTO.email }">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                	<p>E-mail 수신 동의 <span>*</span></p>
                                </div>
                                <c:choose>
                                	<c:when test="${memberDTO.emailConsent eq 'y'}">
		                                <input type="checkbox" id="emailConsent" name="emailConsent" value="y" checked/>
                                	</c:when>
                                	<c:otherwise>
		                                <input type="checkbox" id="emailConsent" name="emailConsent" value="y" />
                                	</c:otherwise>
                                </c:choose>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
			                    <div class="checkout__form__input">
			                    	<p>주소 <span>*</span></p>
				                    <div class="d-flex">
					                    <input type="text" name="zipcode" id="zipcode" value="${memberDTO.zipcode }" aria-describedby="textHelp" style="width: 200px;"/>&emsp;
					                    <input type="button" class="site-btn" onclick="javascript:execDaumPostcode()" value="검색">
				                    </div>
			                    </div>
			                </div>
                            <div class="col-lg-12 col-md-6 col-sm-6">
			                    <div class="checkout__form__input">
			                    	<p>도로명 주소 <span>*</span></p>
				                    <input type="text" name="roadAddress" id="roadAddress" value="${memberDTO.roadAddress }"> <br>
			                    </div>
			                    <div class="checkout__form__input">
			                    	<p>지번 주소 <span>*</span></p>
				                    <input type="text" name="jibunAddress" id="jibunAddress" value="${memberDTO.jibunAddress }"> <br>
			                    </div>
			                    <div class="checkout__form__input">
			                    	<p>나머지 주소 <span>*</span></p>
				                    <input type="text" name="otherAddress" id="otherAddress" value="${memberDTO.otherAddress }"> <br>
			                    </div>
			                </div>
                        </div>
                     </div>
                     <div class="col-lg-4">
                         <div class="checkout__order">
                             <h5>회원정보 관리</h5>
                             <input type="submit" class="site-btn" value="회원정보 수정">
                             <div class="mb-4"></div>
                             <input type="button" class="site-btn" onclick="location.href='/removeMember'" value="탈퇴하기"/>
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