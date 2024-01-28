<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
    
    <script src="/admin/sneat/assets/js/config.js"></script>
    
    <style>
	  .fixed-table, .fixed-card {
	    table-layout: fixed;
	  }
	
	  .fixed-table th, .fixed-table td, .fixed-card a {
	    overflow: hidden; 
	    text-overflow: ellipsis;
	  }
	</style>
        
  </head>

  <body>
      	<jsp:include page="./header/header.jsp"></jsp:include>
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
                        <a href="adMember">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
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
			                    	  <c:forEach var="memberList" items="${memberList }">
				                      <tr>
				                        <td>${memberList.memberId }</td>
				                        <td>${memberList.memberNm }</td>
				                        <td>${memberList.dateBirth }</td>
				                      </tr>
			                      </c:forEach>
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
                        <a href="adClass">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class="mt-3 mb-xl-0">
	                      <div class="table-responsive text-nowrap">
			                  <table class="table mb-4">
			                    <thead>
			                      <tr>
			                        <th>수업명</th>
			                        <th>가격</th>
			                        <th>수업방식</th>
			                      </tr>
			                    </thead>
			                    <tbody>
			                    	  <c:forEach var="classList" items="${classList }">
				                      <tr>
				                        <td>${classList.classNm }</td>
				                        <td>${classList.classPrice }</td>
				                        <td>${classList.classCategory }</td>
				                      </tr>
			                      </c:forEach>
			                    </tbody>
			                  </table>
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
                        <a href="adTeacher">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class="mt-3 mb-xl-0">
	                      <div class="table-responsive text-nowrap">
			                  <table class="table mb-4">
			                    <thead>
			                      <tr>
			                        <th>강사명</th>
			                        <th>생년월일</th>
			                        <th>강사성격</th>
			                      </tr>
			                    </thead>
			                    <tbody>
			                    	  <c:forEach var="teacherList" items="${teacherList }">
				                      <tr>
				                        <td>${teacherList.teacherNm }</td>
				                        <td>${teacherList.teacherBirth }</td>
				                        <td>${teacherList.teacherIntro }</td>
				                      </tr>
			                      </c:forEach>
			                    </tbody>
			                  </table>
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
                      <a href="adReview">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class="mt-3 mb-xl-0">
	                      <div class="table-responsive text-nowrap">
			                  <table class="table mb-4">
			                    <thead>
			                      <tr>
			                        <th>제목</th>
			                        <th>평점</th>
			                        <th>작성일</th>
			                      </tr>
			                    </thead>
			                    <tbody>
			                    	  <c:forEach var="reviewList" items="${reviewList }">
				                      <tr>
				                        <td>${reviewList.reviewTitle }</td>
				                        <td>${reviewList.reviewScore }</td>
				                        <td>${reviewList.reviewDt }</td>
				                      </tr>
			                      </c:forEach>
			                    </tbody>
			                  </table>
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
                      <a href="adEvent">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class="mt-3 mb-xl-0">
	                      <div class="table-responsive text-nowrap">
			                  <table class="table mb-4 fixed-table">
			                    <thead>
			                      <tr>
			                        <th>제목</th>
			                        <th>날짜</th>
			                        <th>할인가</th>
			                      </tr>
			                    </thead>
			                    <tbody>
			                    	  <c:forEach var="eventList" items="${eventList }">
				                      <tr>
				                        <td>${eventList.eventTitle }</td>
				                        <td>${eventList.eventStartDt } ~ ${eventList.eventEndDt }</td>
				                        <td>${eventList.eventCost }</td>
				                      </tr>
			                      </c:forEach>
			                    </tbody>
			                  </table>
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
                      <a href="adReservation">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class="mt-3 mb-xl-0">
	                      <div class="table-responsive text-nowrap">
			                  <table class="table mb-4">
			                    <thead>
			                      <tr>
			                        <th>후기번호</th>
			                        <th>회원아이디</th>
			                        <th>작성일</th>
			                      </tr>
			                    </thead>
			                    <tbody>
			                    	  <c:forEach var="resvList" items="${resvList }">
				                      <tr>
				                        <td>${resvList.resvNo }</td>
				                        <td>${resvList.memberId }</td>
				                        <td><fmt:formatDate value="${resvList.resvDt }" pattern="yyyy-MM-dd"/></td>
				                      </tr>
			                      </c:forEach>
			                    </tbody>
			                  </table>
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
                      <a href="adNotice">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush fixed-table">
	                        	  <c:forEach var="noticeList" items="${noticeList }">
	                          	<a class="list-group-item">${noticeList.noticeTitle }</a>
	                          </c:forEach>
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
                      <a href="adFaq">
                          <button type="button" class="btn btn-outline-primary">
                            전체보기
                          </button>
                        </a>
                    </div>
                    <div class="card-body">
                      <div class="mb-3">
                        <div class=" mb-4 mb-xl-0">
	                      <div class="demo-inline-spacing mt-3">
	                        <div class="list-group list-group-flush fixed-card">
	                        	  <c:forEach var="faqList" items="${faqList }">
	                          	<a class="list-group-item">${faqList.faqQuestion }</a>
	                          </c:forEach>
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
			<jsp:include page="./footer/footer.jsp"></jsp:include>

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
