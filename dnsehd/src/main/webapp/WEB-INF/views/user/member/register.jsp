<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>register</title>
  
  <script src="/ckeditor/ckeditor.js"></script>
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

<script>

var isPassId = false;
var isPassPasswd = false;

$().ready(function() {
	
	$("#isValidId").click(function(){
		
		let memberId = $("#memberId").val();
	    if (memberId == '') {
	    	$("#isValidIdMsg").html("<span style='color:red;'>아이디를 입력하세요.</span>");
	   		return;
	    }
	   
	    $.ajax({
	    	
	       type : "post",
	       url : "/validId",
	       data : {"memberId" : memberId},
	       success : function(isValidId) {
	    	   
	          if (isValidId == "y") {
	          	$("#isValidIdMsg").html("<span style='color:green;'>사용가능한 아이디입니다.</span>");
	          	isPassId = true;
	          }
	          else {
        		$("#isValidIdMsg").html("<span style='color:red;'>중복된 아이디입니다.</span>");
        		isPassId = false;
	          }
	          
	       }
	       
	    });
	    
	});	
	
	
	
	$("#confirmPasswd").blur(function(){
		
		let passwd = $("#memberPw").val();
		let confirmPasswd = $("#confirmPasswd").val();
		
		if (passwd == confirmPasswd) {
			$("#isValidPasswdMsg").html("<span style='color:green;'>패스워드가 일치합니다.</span>");
			isPassPasswd = true;
		}
		else {
			$("#isValidPasswdMsg").html("<span style='color:red;'>패스워드가 일치하지 않습니다.</span>");
			isPassPasswd = false;
		}
		
	});	
	
});


function checkFormValidation() {

	if (!isPassId) {
		alert("아이디를 확인해주세요.");
		$("#memberId").focus();
		return false;
	}
	
	if (!isPassPasswd) {
		alert("패스워드를 확인해주세요.");
		$("#confirmPasswd").focus();
		return false;
	}
}

</script>

  <link rel="shortcut icon" type="image/png" href="/modernize/assets/images/logos/favicon.png" />
  <link rel="stylesheet" href="/modernize/assets/css/styles.min.css" />
</head>

<body>
	  <!--  Body Wrapper -->
	  <div class="page-wrapper" id="main-wrapper" data-layout="vertical" data-navbarbg="skin6" data-sidebartype="full"
	    data-sidebar-position="fixed" data-header-position="fixed">
	    <div
	      class="position-relative overflow-hidden min-vh-100 d-flex align-items-center justify-content-center">
	      <div class="d-flex align-items-center justify-content-center w-100">
	        <div class="row justify-content-center w-100">
	          <div class="col-md-8 col-lg-6 col-xxl-3">
	            <div class="card mb-0">
	              <div class="card-body">
	                <a href="main" class="text-nowrap logo-img text-center d-block py-3 w-100">
	                  <img src="/addedImg/dnsehd_small_logo.png" width="180" alt="">
	                </a>
	                <p class="text-center">Your Healthy Exercise</p>
	                <form action="/register" onsubmit="return checkFormValidation();" method="post" enctype="multipart/form-data">
	                  <div class="mb-3">
	                    <label for="exampleInputtext1" class="form-label">아이디</label>
	                  	<div class="d-flex">
		                    <input type="text" class="form-control" name="memberId" id="memberId" placeholder="아이디" aria-describedby="textHelp" required maxlength="20" style="width: 200px;"/>&emsp;
		                    <input type="button" class="btn btn-primary w-60 py-8 fs-4 rounded-2" id="isValidId" value="중복확인" />
	                    </div>
	                 	    <span id="isValidIdMsg"></span>
	                  </div>
	                  <div class="mb-3">
	                    <label for="exampleInputPassword1" class="form-label">비밀번호</label>
	                    <input type="password" class="form-control" name="memberPw" id="memberPw" placeholder="비밀번호" required/>
	                  </div>
	                  <div class="mb-4">
	                    <label for="exampleInputPassword1" class="form-label">비밀번호 확인</label>
	                    <input type="password" class="form-control" id="confirmPasswd" placeholder="비밀번호확인" required/>&emsp;
	                    <span id="isValidPasswdMsg"></span>
	                  </div>
	                  <div class="mb-3">
	                    <label for="exampleInputtext1" class="form-label">회원 이름</label>
	                    <input type="text" class="form-control" name="memberNm" id="memberNm" placeholder="이름" aria-describedby="textHelp" required/>
	                  </div>
	                  <div class="mb-3">
	                    <label for="exampleInputtext1" class="form-label">성별</label><br> 
	                    <input type="radio" name="sex" id="sex" value="m" aria-describedby="textHelp" checked="checked" /> 남성&emsp;&emsp;&emsp;
	                    <input type="radio" name="sex" id="sex" value="w" aria-describedby="textHelp" /> 여성&emsp;&emsp;&emsp;
	                  </div>
	                  <div class="mb-3">
	                    <label for="exampleInputtext1" class="form-label">생년월일</label>
	                    <input type="text" class="form-control" name="dateBirth" id="dateBirth" placeholder="yyyy-MM-dd" aria-describedby="textHelp" required/>
	                  </div>			
	                  <div class="mb-3">
	                    <label for="exampleInputtext1" class="form-label">핸드폰 번호</label>
	                    <input type="text" class="form-control" name="hp" id="hp" placeholder="010-0000-0000" aria-describedby="textHelp" required/>
	                    <input type="checkbox" id="smsConsent" name="smsConsent" value="y" checked/>
	                    DNSEHD에서 발송하는 SMS 소식을 수신합니다.
	                  </div>			
	                  <div class="mb-3">
	                    <label for="exampleInputEmail1" class="form-label">이메일</label>
	                    <input type="email" class="form-control" name="email" id="email" aria-describedby="emailHelp" required/>
	                    <input type="checkbox" id="emailConsent" name="emailConsent" value="y" checked/>
	                    DNSEHD에서 발송하는 E-mail을 수신합니다.
	                  </div>
	                  <div class="mb-3">
	                    <label for="exampleInputtext1" class="form-label">주소</label>
	                    <div class="d-flex">
		                    <input type="text" class="form-control" name="zipcode" id="zipcode" placeholder="우편번호 입력" aria-describedby="textHelp" required style="width: 200px;"/>&emsp;
		                    <input type="button" class="btn btn-primary w-30 py-8 fs-4 rounded-2" onclick="javascript:execDaumPostcode()" value="검색">
	                    </div>
	                    <br><br>
	                    도로명 주소 : <input type="text" class="form-control" name="roadAddress" id="roadAddress"> <br>
	                    지번 주소 : <input type="text" class="form-control" name="jibunAddress" id="jibunAddress"> <br>
	                    나머지 주소 : <input type="text" class="form-control" name="otherAddress" id="otherAddress"> <br>
	                  </div>
	                  <a href="main"><input type="submit" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" value="회원가입"></a>
	                  <div class="d-flex align-items-center justify-content-center">
	                    <p class="fs-4 mb-0 fw-bold">이미 아이디가 있으신가요?</p>
	                    <a class="text-primary fw-bold ms-2" href="login">로그인</a>
	                  </div>
	                </form>
	              </div>
	            </div>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  <script src="/modernize/assets/libs/jquery/dist/jquery.min.js"></script>
	  <script src="/modernize/assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>