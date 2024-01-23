<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

    <title>리뷰상세정보</title>

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

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/admin/sneat/assets/js/config.js"></script>
    <script src="/ckeditor/ckeditor.js"></script>
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
              <!-- Bootstrap Table with Caption -->
                  <div class="card mb-4">
                    <h2 class="card-header">리뷰 상세정보</h2>
                    <hr class="my-0" />
                    <div class="card-body row">
                      <div class="mb-3">
                        <label for="defaultInput" class="form-label">후기제목</label>
                        <input id="defaultInput" class="form-control" type="text" value="${reviewMap.reviewTitle }" readonly/>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">아이디</label>
                        <input id="defaultInput" class="form-control" type="text" value="${reviewMap.memberId }" readonly/>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">수업명</label>
                        <input id="defaultInput" class="form-control" type="text" value="${reviewMap.classNm }" readonly/>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultSelect" class="form-label">후기평점 (1~5)</label>
                        <input id="defaultInput" class="form-control" type="text" value="${reviewMap.reviewScore }" readonly/>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultSelect" class="form-label">등록날짜</label>
                        <input id="defaultInput" class="form-control" type="text" value="<fmt:formatDate value='${reviewMap.reviewDt}' pattern='yyyy-MM-dd' />" readonly/>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">내용</label>
                        <textarea rows="10" cols="50" id="reviewContent" name="reviewContent" class="form-control" readonly>${reviewMap.reviewContent }</textarea>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">사진</label>
                        <div><img src="/reviewImg?fileName=${reviewMap.reviewImgUUID }" width="300" height="200" alt="사진"></div>
                      </div>
                      <div class="mt-2">
 	                      <input type="hidden" name="reviewNo" value="${reviewMap.reviewNo }"/>
                          <input type="button" class="btn btn-outline-primary me-2" value="삭제하기" onclick="location.href='/adRemoveReview?reviewNo=${reviewDTO.reviewNo }'">
                          <input type="button" class="btn btn-outline-secondary" value="뒤로가기" onclick="location.href='/adReview'">
                      </div>
                    </div>
                  </div>
                </div>
                </div>
                </div>
              <!-- Bootstrap Table with Caption -->

              <hr class="my-5" />

            <!-- footer section -->
         <jsp:include page="../footer/footer.jsp"></jsp:include>

            <div class="content-backdrop fade"></div>
          </div>
          <!-- Content wrapper -->
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