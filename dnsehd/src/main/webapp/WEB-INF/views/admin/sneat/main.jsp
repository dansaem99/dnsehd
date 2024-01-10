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

    <title>Main</title>

    <meta name="description" content="" />

    <!-- Favicon -->
    <link rel="icon" type="image/x-icon" href="/addedImg/dnsehd_small_logo.png" />

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

    <link rel="stylesheet" href="/admin/sneat/assets/vendor/libs/apex-charts/apex-charts.css" />

    <!-- Page CSS -->

    <!-- Helpers -->
    <script src="/admin/sneat/assets/vendor/js/helpers.js"></script>

    <!--! Template customizer & Theme config files MUST be included after core stylesheets and helpers.js in the <head> section -->
    <!--? Config:  Mandatory theme config file contain global vars & default theme options, Set your preferred theme option in this file.  -->
    <script src="/admin/sneat/assets/js/config.js"></script>
  </head>

  <body>
      	<jsp:include page="header.jsp"></jsp:include>
      	<!-- Content wrapper -->
          <div class="content-wrapper">
            <!-- Content -->

            <div class="container-xxl flex-grow-1 container-p-y">
            <!-- Content -->
              
              <div class="row">
                <!-- 회원관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">회원관리</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="admember">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class="mt-3 mb-xl-0">
	                      <div class="table-responsive text-nowrap">
                  <table class="table mb-4">
                    <thead>
                      <tr>
                        <th>아이디</th>
                        <th>이름</th>
                        <th>생년월일</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>user</td>
                        <td>user</td>
                        <td>2000-01-01</td>
                      </tr>
                      <tr>
                        <td>user</td>
                        <td>user</td>
                        <td>2000-01-01</td>
                      </tr>
                      <tr>
                        <td>user</td>
                        <td>user</td>
                        <td>2000-01-01</td>
                      </tr>
                      <tr>
                        <td>user</td>
                        <td>user</td>
                        <td>2000-01-01</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 회원관리 -->

				<!-- 수업관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">수업관리</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 수업관리 -->

				<!-- 강사관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">강사관리</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 강사관리 -->
                
                <!-- 수업후기관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">수업후기관리</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 수업후기관리 -->
                
                <!-- 이벤트관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">이벤트관리</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 이벤트관리 -->
                
                <!-- 예약관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">예약관리</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 예약관리 -->
                
                <!-- 공지사항 관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">공지사항</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ 공지관리 -->
                
                <!-- FAQ 관리 -->
                <div class="col-md-6 col-lg-4 col-xl-4 order-0 mb-4">
                  <div class="card h-100">
                    <div class="card-header d-flex align-items-center justify-content-between pb-0">
                      <div class="card-title mb-0">
                        <h5 class="m-0 me-2">FAQ</h5>
                      </div>
                      <div class="dropdown">
                        <button
                          class="btn p-0"
                          type="button"
                          id="orederStatistics"
                          data-bs-toggle="dropdown"
                          aria-haspopup="true"
                          aria-expanded="false"
                        >
                          <i class="bx bx-dots-vertical-rounded"></i>
                        </button>
                        <div class="dropdown-menu dropdown-menu-end" aria-labelledby="orederStatistics">
                          <a class="dropdown-item" href="javascript:void(0);">전체보기</a>
                          <a class="dropdown-item" href="javascript:void(0);">추가하기</a>
                        </div>
                      </div>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush">
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >신규 회원은 알림 확인 바랍니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >휴면 회원 개인정보 약관입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >1월 할인 이벤트 모음입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >장기고객 감사 할인 혜택 안내입니다.</a>
	                          <a href="javascript:void(0);" class="list-group-item list-group-item-action"
	                            >공지사항</a
	                          >
	                        </div>
	                      </div>
	                    </div>
                      </div>
                    </div>
                  </div>
                </div>
                <!--/ FAQ -->
                
                

              </div>
              
            </div>
            </div>
            <!-- / Content -->

           <!-- footer section -->
			<jsp:include page="footer.jsp"></jsp:include>

            <div class="content-backdrop fade"></div>
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
    <script src="/admin/sneat/assets/vendor/libs/apex-charts/apexcharts.js"></script>

    <!-- Main JS -->
    <script src="/admin/sneat/assets/js/main.js"></script>

    <!-- Page JS -->
    <script src="/admin/sneat/assets/js/dashboards-analytics.js"></script>

    <!-- Place this tag in your head or just before your close body tag. -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
  </body>
</html>
