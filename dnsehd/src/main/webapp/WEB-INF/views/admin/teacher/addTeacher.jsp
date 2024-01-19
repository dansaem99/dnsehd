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

    <title>강사관리</title>

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
                    <h2 class="card-header">강사추가</h2>
                    <hr class="my-0" />
                    <form action="/adAddTeacher" method="post" enctype="multipart/form-data">
	                    <div class="card-body row">
	                      <div class="mb-3 col-md-6">
	                        <label for="defaultInput" class="form-label">강사이름</label>
	                        <input id="teacherNm" name="teacherNm" class="form-control" type="text" placeholder="강사 이름을 입력하세요." />
	                      </div>
	                      <div class="mb-3 col-md-6">
	                        <label for="defaultInput" class="form-label">생년월일</label>
	                        <input id="teacherBirth" name="teacherBirth" class="form-control" type="date" placeholder="생년월일을 입력하세요." value="<fmt:formatDate pattern="yyyy-MM-dd" value="${teacherBirth }" />"/>
	                      </div>
	                      <div class="mb-3 col-md-6">
	                        <label for="defaultInput" class="form-label">강사 전화번호</label>
	                        <input id="teacherHp" name="teacherHp" class="form-control" type="text" placeholder="강사 전화번호를 입력하세요." />
	                      </div>
	                      <div class="mb-3 col-md-6">
	                        <label for="formFileMultiple" class="form-label">사진</label>
	                        <input class="form-control" type="file" name="uploadProfile" id="uploadProfile" required/>
	                      </div>
	                      <div class="mb-3">
	                        <label for="defaultInput" class="form-label">강사 한줄 소개</label>
	                        <input id="teacherIntro" name="teacherIntro" class="form-control" type="text" placeholder="강사 한줄 소개를 입력하세요." />
	                      </div>
	                      <div class="mb-3">
	                        <label for="defaultInput" class="form-label">강사이력</label>
	                        <textarea rows="10" cols="50" name="teacherCareer" class="form-select" placeholder="강사 이력을 자세히 입력하세요." required></textarea>
	                      </div>
	                      <div class="mt-2">
	                          <input type="hidden" name="adminId" value="${sessionScope.adminId}">
	                          <input type="submit" value="추가하기" class="btn btn-outline-primary me-2">
	                          <input type="button" value="뒤로가기" class="btn btn-outline-secondary" onclick="location.href='/adTeacher'">
	                      </div>
	                    </div>
                    </form>
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