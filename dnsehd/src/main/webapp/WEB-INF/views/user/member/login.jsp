<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>login</title>
  <link rel="shortcut icon" type="image/png" href="/modernize/assets/images/logos/favicon.png" />
  <link rel="stylesheet" href="/modernize/assets/css/styles.min.css" />

  <script src="/jquery/jquery-3.6.1.min.js"></script>
  <script>
  
  	$(function(){
  		
  		$("#loginBtn").click(function(){
  			
  			let loginData = {
  				"memberId" : $("[name='memberId']").val(),
  				"memberPw" : $("[name='memberPw']").val(),
  			}
  			
  			$.ajax({
  				url : "/login",
  				type : "post",
  				data : loginData,
  				success : function(isValidMember) {
  					
  					if (isValidMember == "y") {
  						location.href = "/member/main";
  					}
  					else {
  						$("#failMsg").html("<span style='color:red;'>아이디와 패스워드를 확인하세요.</span>");
  					}
  				}
  			});
  		});
  	});
  </script>

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
                <form>
                  <div class="mb-3">
                    <label for="element1" class="form-label">아이디</label>
                    <input type="text" class="form-control" name="memberId" aria-describedby="memberId">
                  </div>
                  <div class="mb-4">
                    <label for="element2" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" name="memberPw"><br>
                    <span id="failMsg"></span>
                  </div>
                  <div class="d-flex align-items-center justify-content-between mb-4">
                    <div class="form-check">
                      <input class="form-check-input primary" type="checkbox" value="" id="flexCheckChecked" checked>
                      <label class="form-check-label text-dark" for="flexCheckChecked">
                        로그인 상태 유지
                      </label>
                    </div>
                    <a class="text-primary fw-bold" href="./index.html">비밀번호를 잊으셨나요?</a>
                  </div>
                  <a href="main" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2" id="loginBtn">로그인</a>
                  <div class="d-flex align-items-center justify-content-center">
                    <p class="fs-4 mb-0 fw-bold">아이디가 없으신가요?</p>
                    <a class="text-primary fw-bold ms-2" href="register">회원가입</a>
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