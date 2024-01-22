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
  
	var isPassId = false;
	var isPassPasswd = false;
	
	$().ready(function() {
		
		$("#confirmPasswd").blur(function(){
			
			let memberPw = $("#memberPw").val();
			let confirmPasswd = $("#confirmPasswd").val();
			
			if (memberPw == confirmPasswd) {
				$("#isValidPasswdMsg").html("<span style='color:green;'>패스워드가 일치합니다.</span>");
				isPassPasswd = true;
			}
			else {
				$("#isValidPasswdMsg").html("<span style='color:red;'>패스워드가 일치하지 않습니다.</span>");
				isPassPasswd = false;
			}
			
		});	
		
		$("#nextBtn").click(function() {
			if (!isPassPasswd) {
				alert('입력한 패스워드가 불일치합니다. 다시 확인해주세요.');
				return false;
			}
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
                <form action="/modifyPassword" method="post">
                  <div class="mb-3" style="text-align: center;">
                    <label for="element0" class="form-label" style="font-size: 30px;">비밀번호 변경 </label>
                    <label for="element0" class="form-label">변경하려는 비밀번호를 입력하세요. </label>
                  </div>
                  <div class="mb-3">
                    <label for="element2" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" name="memberPw" id="memberPw" placeholder="비밀번호" required/>
                  </div>
                  <div class="mb-4">
                    <label for="element3" class="form-label">비밀번호 확인</label>
                    <input type="password" class="form-control" id="confirmPasswd" placeholder="비밀번호확인" required/>&emsp;
                    <span id="isValidPasswdMsg"></span>
                  </div>                  
			      <div class="d-flex align-items-center justify-content-center">
			      	<input type="hidden" name="memberId" id="memberId" value="${memberDTO.memberId }"/>
				  	<input type="button" class="btn btn-primary w-30 py-8 fs-4 mb-4 rounded-2 mx-2" id="cancelBtn" value="취소" onclick="location.href='/findPassword'"/>
				    <input type="submit" class="btn btn-primary w-100 py-8 fs-4 mb-4 rounded-2 mx-2" id="nextBtn" value="확인" />
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