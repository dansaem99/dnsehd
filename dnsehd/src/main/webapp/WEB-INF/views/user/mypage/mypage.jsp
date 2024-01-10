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
                        <a href="main"><i class="fa fa-home"></i> Home</a>
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
            <form action="#" class="checkout__form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>회원 정보</h5>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 아이디 <span>*</span></p>
                                    <input type="text" id="memberId" name="memberId" placeholder="userEx">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 비밀번호 <span>*</span></p>
                                    <input type="text" id="memberPw" name="memberPw" placeholder="passwordEx">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 이름 <span>*</span></p>
                                    <input type="text" id="memberNm" name="memberNm" placeholder="사용자">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 성별 <span>*</span></p>
                                    <input type="text" id="sex" name="sex" placeholder="여">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 생년월일 <span>*</span></p>
                                    <input type="text" id="dateBirth" name="dateBirth" placeholder="2000-01-01">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 전화번호 <span>*</span></p>
                                    <input type="text" id="hp" name="hp" placeholder="010-1234-5678">
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                    <p>회원 이메일 <span>*</span></p>
                                    <input type="email" id="email" name="email" placeholder="user@naver.com">
                                </div>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                	<p>E-mail 수신 동의 <span>*</span></p>
                                </div>
                                <input type="checkbox" id="emailConsent" name="emailConsent" value="y" checked/>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
                                <div class="checkout__form__input">
                                	<p>SMS 수신 동의 <span>*</span></p>
                                </div>
                                <input type="checkbox" id="smsConsent" name="smsConsent" value="y" checked/>
                            </div>
                            <div class="col-lg-3 col-md-6 col-sm-6">
			                    <div class="checkout__form__input">
			                    	<p>주소 <span>*</span></p>
				                    <div class="d-flex">
					                    <input type="text" name="zipcode" id="zipcode" placeholder="06035" aria-describedby="textHelp" required style="width: 200px;"/>&emsp;
					                    <input type="button" class="site-btn" onclick="javascript:execDaumPostcode()" value="검색">
				                    </div>
			                    </div>
			                </div>
                            <div class="col-lg-12 col-md-6 col-sm-6">
			                    <div class="checkout__form__input">
			                    	<p>도로명 주소 <span>*</span></p>
				                    <input type="text" name="roadAddress" id="roadAddress" placeholder="서울 강남구 가로수길 5 (신사동)"> <br>
			                    </div>
			                    <div class="checkout__form__input">
			                    	<p>지번 주소 <span>*</span></p>
				                    <input type="text" name="jibunAddress" id="jibunAddress" placeholder="서울 강남구 신사동 537-5"> <br>
			                    </div>
			                    <div class="checkout__form__input">
			                    	<p>나머지 주소 <span>*</span></p>
				                    <input type="text" name="otherAddress" id="otherAddress" placeholder="아파트 1301호"> <br>
			                    </div>
			                </div>
                        </div>
                     </div>
                     <div class="col-lg-4">
                         <div class="checkout__order">
                             <h5>수강료 관리</h5>
                             <div class="checkout__order__product">
                                 <ul>
                                     <li>
                                         <span class="top__text">등록한 수업</span>
                                         <span class="top__text__right">수강료</span>
                                     </li>
                                     <li>01. 근력 향상 1:1 PT <span>35만원/월</span></li>
                                     <li>02. 주3회 스쿼시 자유이용 <span>20만원/월</span></li>
                                     <li>03. Something1 <span>0만원/월</span></li>
                                     <li>04. Something2 <span>0만원/월</span></li>
                                 </ul>
                             </div>
                             <div class="checkout__order__total">
                                 <ul>
                                     <li>총 수강료 <span>55만원/월</span></li>
                                 </ul>
                             </div>
                         </div>
                         <div class="checkout__order">
                             <h5>회원정보 관리</h5>
                             <button type="submit" class="site-btn">회원정보 수정</button>
                             <div class="mb-4"></div>
                             <button type="submit" class="site-btn" onclick="location.href='/removeMember'">탈퇴하기</button>
                         </div>   
                     </div>
                 </div>
             </form>
         </div>
     </section>

    <!-- List of Reserved Classes -->
    <section class="checkout spad">
        <div class="container">
            <form action="#" class="checkout__form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>예약한 수업 조회</h5>
                        <section class="shop__cart__table" style="text-align: center;">
		                    <div class="shop__cart__table">
		                        <table>
		                            <thead>
		                                <tr>
		                                    <th>수업명</th>
		                                    <th>수강료</th>
		                                    <th>예약일</th>
		                                    <th>예약 취소</th>
		                                    <th></th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <tr>
		                                    <td class="notice__no">근력 향상 1:1 PT</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>35만원/월</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                                <tr>
		                                    <td class="notice__no">근력 향상 1:1 PT</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>35만원/월</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                                <tr>
		                                    <td class="notice__no">근력 향상 1:1 PT</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>35만원/월</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                                <tr>
		                                    <td class="notice__no">근력 향상 1:1 PT</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>35만원/월</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                            </tbody>
		                        </table>
		                    </div>
				    	</section>
                     </div>
                </div>
            </form>
        </div>
    </section>
    
    <!-- List of Reviews -->
    <section class="checkout spad">
        <div class="container">
            <form action="#" class="checkout__form">
                <div class="row">
                    <div class="col-lg-8">
                        <h5>내가 쓴 후기 조회</h5>
                        <section class="shop__cart__table" style="text-align: center;">
		                    <div class="shop__cart__table">
		                        <table>
		                            <thead>
		                                <tr>
		                                    <th>후기 제목</th>
		                                    <th>후기 평점</th>
		                                    <th>후기 작성일</th>
		                                    <th>후기 삭제</th>
		                                    <th></th>
		                                </tr>
		                            </thead>
		                            <tbody>
		                                <tr>
		                                    <td class="notice__no" >강남역 필라테스 수업 듣고 체중 5Kg 감량!</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>5점</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                                <tr>
		                                    <td class="notice__no">강남역 필라테스 수업 듣고 체중 5Kg 감량!</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>5점</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                                <tr>
		                                    <td class="notice__no">강남역 필라테스 수업 듣고 체중 5Kg 감량!</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>5점</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                                <tr>
		                                    <td class="notice__no">강남역 필라테스 수업 듣고 체중 5Kg 감량!</td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__title">
		                                            <h6>5점</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__item">
		                                        <div class="notice__item__writer">
		                                            <h6>2024-01-01</h6>
		                                        </div>
		                                    </td>
		                                    <td class="notice__date" style="text-align: center;"><i class="fa fa-solid fa-ban"></i></td>
		                                </tr>
		                            </tbody>
		                        </table>
		                    </div>
				    	</section>
                     </div>
                </div>
            </form>
        </div>
    </section>
    
	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
</body>

</html>