<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!-- beautify ignore:start -->
<html
  lang="en"
  class="light-style layout-menu-fixed"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/admin/sneat/assets/"
  data-template="vertical-menu-template-free"
>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1.0, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0"
    />

    <title>회원수정</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/admin/sneat/assets/img/favicon/favicon.ico" />

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Public+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;1,300;1,400;1,500;1,600;1,700&display=swap"
      rel="stylesheet"
    />

    <!-- Icons. Uncomment required icon fonts -->
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/fonts/boxicons.css" />

    <!-- Core CSS -->
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/css/core.css" class="template-customizer-core-css" />
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/css/theme-default.css" class="template-customizer-theme-css" />
    <link rel="stylesheet" href="/admin/sneat/assets/css/demo.css" />

    <!-- Vendors CSS -->
    <link rel="stylesheet" href="/admin/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/admin/sneat/assets/vendor/js/helpers.js"></script>
    <style type="text/css">
      .layout-menu-fixed .layout-navbar-full .layout-menu,
      .layout-page {
        padding-top: 0px !important;
      }
      .content-wrapper {
        padding-bottom: 0px !important;
      }
   </style>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/admin/sneat/assets/js/config.js"></script>
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
    <!-- Layout wrapper -->

        <jsp:include page="../header/header.jsp"></jsp:include>

          <!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
              <div class="row">
                <div class="col-md-12">
                  <div class="card mb-4">
                    <h2 class="card-header">회원수정</h2>
                    <!-- 회원수정 -->
                    <hr class="my-0" />
                    <div class="card-body">
                      <form action="/modifyMember" method="post">
                        <div class="row">
                          <div class="mb-3 col-md-6">
                            <label for="memberId" class="form-label">회원 아이디</label>
                            <input class="form-control" type="text" id="memberId" name="memberId" value="${memberDTO.memberId }"/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="organization" class="form-label">회원 이름</label>
                            <input type="text" class="form-control" id="memberNm" name="memberNm" value=${memberDTO.memberNm }/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="organization" class="form-label">성별</label>
                            <input type="text" class="form-control" id="sex" name="sex" value="${memberDTO.sex }"/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="organization" class="form-label">생년월일</label>
                            <input type="date" class="form-control" id="dateBirth" name="dateBirth" value="${memberDTO.dateBirth }"/>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label class="form-label" for="phoneNumber">회원 전화번호</label>
                            <div class="input-group input-group-merge">
                              <input type="text" id="hp" name="hp" class="form-control" value="${memberDTO.hp }"/>
                            </div>
                          </div>
                          <div class="mb-3 col-md-6">
                            <label for="email" class="form-label">회원 이메일</label>
                            <input class="form-control" type="text" id="email" name="email" value="${memberDTO.email }"/>
                          </div>
                          <div class="col-lg-3 col-md-6 ">
                                <div class="checkout__form__input">
                                   <p>E-mail 수신 동의</p>
                                </div>
                                <input type="checkbox" id="emailConsent" name="emailConsent" value="y" checked/>
                            </div>
                            <div class="col-lg-3 col-md-6 ">
                                <div class="checkout__form__input">
                                   <p>SMS 수신 동의</p>
                                </div>
                                <input type="checkbox" id="smsConsent" name="smsConsent" value="y" checked/>
                            </div>
                            <div class="mb-3 col-md-6">
                          </div>
                            <div class="mb-3 col-md-6">
                               <label for="email" class="form-label">주소</label>
                            <input class="form-control" type="text" id="zipcode" name="zipcode" value="${memberDTO.zipcode }"/>
                          </div>
                             <div class="mb-3 col-md-6 mt-4">
                             <input type="button" class="site-btn btn btn-primary me-2" onclick="javascript:execDaumPostcode()" value="검색">
                          </div>
                          <div class="mb-3">
                            <label for="zipCode" class="form-label">도로명 주소</label>
                            <input type="text" class="form-control" id="roadAddress" name="roadAddress" value="${memberDTO.roadAddress }" maxlength="6"/>
                          </div>
                          <div class="mb-3">
                            <label for="zipCode" class="form-label">지번 주소</label>
                            <input type="text" class="form-control" id="jibunAddress" name="jibunAddress" value="${memberDTO.jibunAddress }" maxlength="6"/>
                          </div>
                          <div class="mb-3">
                            <label for="zipCode" class="form-label">나머지 주소</label>
                            <input type="text" class="form-control" id="otherAddress" name="otherAddress" value="${memberDTO.otherAddress }" maxlength="6"/>
                          </div>
                        </div>
                        <div class="mt-2">
                          <input type="submit" class="btn btn-outline-primary me-2" value="수정하기" />
                          <input type="button" class="btn btn-outline-secondary" onclick="location.href='/adMember'" value="뒤로가기" />
                        </div>
                      </form>
                    </div>
                    <!-- /Account -->
                  </div>
                </div>
              </div>
            </div>
            
            <hr class="my-5" />

            <!-- footer section -->
         <jsp:include page="../footer/footer.jsp"></jsp:include>
          </div>
          <!-- Content wrapper -->
        </div>
        <!-- / Layout page -->

      <!-- Overlay -->
      <div class="layout-overlay layout-menu-toggle"></div>
    <!-- / Layout wrapper -->

    <!-- Core JS -->
    <!-- build:js assets/vendor/js/core.js -->
    <script src="/admin/sneat/assets/vendor/libs/jquery/jquery.js"></script>
    <script src="/admin/sneat/assets/vendor/libs/popper/popper.js"></script>
    <script src="/admin/sneat/assets/vendor/js/bootstrap.js"></script>
    <script src="/admin/sneat/assets/vendor/libs/perfect-scrollbar/perfect-scrollbar.js"></script>

    <script src="/admin/sneat/assets/vendor/js/menu.js"></script>
    <!-- endbuild -->

    <!-- Vendors JS -->

    <!-- Main JS -->
    <script src="/admin/sneat/assets/js/main.js"></script>

    <!-- Page JS -->

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>