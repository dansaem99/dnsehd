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

    <title>수업수정</title>

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
                  <div class="card mb-4">
                    <h2 class="card-header">강사수정</h2>
                    <!-- 회원수정 -->
                    <hr class="my-0" />
                    <div class="card-body row">
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">강사이름</label>
                        <input id="defaultInput" class="form-control" type="text" placeholder="Default input" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">생년월일</label>
                        <input id="defaultInput" class="form-control" type="text" placeholder="Default input" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">강사전화번호</label>
                        <input id="defaultInput" class="form-control" type="text" placeholder="Default input" />
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultSelect" class="form-label">진행수업</label>
                        <select id="defaultSelect" class="form-select">
                          <option>헬스</option>
                          <option>스쿼시</option>
                          <option>요가</option>
                          <option>필라테스</option>
                        </select>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="defaultInput" class="form-label">강사이력</label>
                        <textarea rows="10" cols="50" name="sportContent" required></textarea>
						<script>CKEDITOR.replace("sportContent");</script>
                      </div>
                      <div class="mb-3 col-md-6">
                        <label for="formFileMultiple" class="form-label">사진</label>
                        <input class="form-control" type="file" id="formFileMultiple" multiple />
                      </div>
                      <div class="mt-2">
                          <button type="submit" class="btn btn-outline-primary me-2"><a href="adTeacher">추가하기</a></button>
                          <button type="submit" class="btn btn-outline-secondary"><a href="adTeacher">뒤로가기</a></button>
                      </div>
                    </div>
                    <!-- /Account -->
                  </div>
                  <div class="card">
                    <h5 class="card-header">강사정보삭제</h5>
                    <div class="card-body">
                      <div class="mb-3 col-12 mb-0">
                        <div class="alert alert-warning">
                          <h6 class="alert-heading fw-bold mb-1">정말로 강사정보를 삭제하시겠습니까?</h6>
                          <p class="mb-0">강사정보를 삭제하면 되돌릴 수 없습니다. 확실하게 해주세요.</p>
                        </div>
                      </div>
                      <form id="formAccountDeactivation" onsubmit="return false">
                        <button type="submit" class="btn btn-outline-secondary deactivate-account"><a href="adClass">삭제</a></button>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            
            <hr class="my-5" />

            <!-- footer section -->
         <jsp:include page="../footer/footer.jsp"></jsp:include>
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