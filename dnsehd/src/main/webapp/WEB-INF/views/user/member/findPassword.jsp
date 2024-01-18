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

  	function authentication(){
  		let authData = {
  				"memberId" : $("[name='memberId']").val(),
  				"email" : $("[name='email']").val(),
  			}
  			
  			$.ajax({
  				url : "/findPassword",
  				type : "post",
  				data : authData,
  				success : function(authinfo) {
  					
  					if (authinfo.isValidMember == "y") {
  						$("#failMsg").html("<span style='color:green;'>아이디와 이메일 정보가 일치합니다.</span>");
  					}
  					else {
  						$("#failMsg").html("<span style='color:red;'>아이디와 이메일을 확인하세요.</span>");
  					}
  				}
  			});
  	}
  	
  	function matchAuthNo(){
  		let authNumberData = {
  				"authInputNo" : $("[name='authInputNo']").val()
  			}
  			
  			$.ajax({
  				url : "/findPassword",
  				type : "post",
  				data : authNumberData,
  				success : function(authinfo) {
  					console.log('authinfo.authenticationNo:', authinfo.authenticationNo);
  					console.log('authNumberData.authInputNo:', authNumberData.authInputNo);
  					
  					if (authNumberData.authInputNo === authinfo.authenticationNo) {
  						window.location.href = '/modifyPassword';
  					}
  					else {
  						$("#notMatchMsg").html("<span style='color:red;'>인증번호가 일치하지 않습니다.</span>");
  					}
  				}
  			});
  	}
  
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
                <form>
                  <div class="mb-3" style="text-align: center;">
                    <label for="element0" class="form-label" style="font-size: 30px;">비밀번호 찾기 </label><br>
                    <label for="element0" class="form-label">회원가입 시 등록한 정보와 일치하면, </label>
                    <label for="element0" class="form-label">새로운 비밀번호를 설정할 수 있습니다. </label>
                  </div>
                  <div class="mb-3">
                    <label for="element1" class="form-label">아이디</label>
                    <input type="text" class="form-control" name="memberId" placeholder="등록한 아이디를 입력하세요." aria-describedby="memberId">
                  </div>
                  <div class="mb-3">
                    <label for="element2" class="form-label">이메일</label>
                    <input type="email" class="form-control" name="email" placeholder="등록한 이메일을 입력하세요." ><br>
                    <span id="failMsg"></span>
                  </div>
                  <a href="javascript:authentication()" class="btn btn-primary w-50 py-8 fs-4 mb-4 rounded-2 mx-auto d-block" id="authenticationBtn">인증번호 받기</a>
                  <div class="mb-4">
                    <label for="element3" class="form-label">인증번호</label>
                    <input type="text" class="form-control" name="authInputNo" placeholder="이메일로 수신한 인증번호를 입력하세요." ><br>
                    <span id="notMatchMsg"></span>
                  </div>
			      <div class="d-flex align-items-center justify-content-center">
				  	<input type="button" class="btn btn-primary w-30 py-8 fs-4 mb-4 rounded-2 mx-2" id="cancelBtn" value="취소" onclick="location.href='/login'"/>
				    <a href="javascript:matchAuthNo()" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2 mx-2" id="authNoDoneBtn">확인</a>
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