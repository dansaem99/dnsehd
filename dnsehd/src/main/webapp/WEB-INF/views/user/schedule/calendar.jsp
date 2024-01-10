<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ashion Template">
    <meta name="keywords" content="Ashion, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>calendar</title>
	
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cookie&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap"
    rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/ashion/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/ashion/css/style.css" type="text/css">
    
    <!-- Calendar Config Begin -->
    <!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="/deskapp/vendors/images/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="/deskapp/vendors/images/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="/deskapp/vendors/images/favicon-16x16.png">

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet">
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="/deskapp/vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="/deskapp/vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="/deskapp/src/plugins/fullcalendar/fullcalendar.css">
	<link rel="stylesheet" type="text/css" href="/deskapp/vendors/styles/style.css">

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
	<!-- Calendar Config End -->
</head>

<body>
	<!-- header section -->
	<jsp:include page="../header/header.jsp"></jsp:include>
	
	<!-- Calendar Section Start -->
	<div class="main-container">
		<div class="pd-ltr-20 xs-pd-20-10">
			<div class="min-height-200px">
				<div class="pd-20 card-box mb-30">
					<div class="calendar-wrap">
						<div id='calendar'></div>
					</div>
					<!-- calendar modal -->
					<div id="modal-view-event" class="modal modal-top fade calendar-modal">
						<div class="modal-dialog modal-dialog-centered">
							<div class="modal-content">
								<div class="modal-body">
									<h4 class="h4"><span class="event-icon weight-400 mr-3"></span><span class="event-title"></span></h4>
									<div class="event-body"></div>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					      <div id="modal-view-event-add" class="modal modal-top fade calendar-modal">
					         <div class="modal-dialog modal-dialog-centered">
					            <div class="modal-content">
					               <form id="add-event">
					                  <div class="modal-body">
					                     <div style="text-align: center;">
					                     	<h4 class="text-blue h4 mb-10"><b>오늘의 운동 & 식단 추가하기</b></h4>
					                     </div>
					                     <div class="form-group">
					                        <label>날짜</label>
					                        <input type='text' class="datetimepicker form-control" name="edate">
					                     </div>
					                     <div class="form-group">
					                        <label>수업명</label>
					                        <input type="text" class="form-control" name="ename">
					                     </div>
					                     <div class="form-group">
					                        <label>수업 후 간단한 소감을 적어볼까요?</label>
					                        <textarea class="form-control" name="edesc"></textarea>
					                     </div>
					                     <div class="form-group">
					                        <label>아침</label>
					                        <input type="text" class="form-control" name="ename">
					                     </div>
					                     <div class="form-group">
					                        <label>점심</label>
					                        <input type="text" class="form-control" name="ename">
					                     </div>
					                     <div class="form-group">
					                        <label>저녁</label>
					                        <input type="text" class="form-control" name="ename">
					                     </div>
					                     <div class="form-group">
					                        <label>간식</label>
					                        <input type="text" class="form-control" name="ename">
					                     </div>
					                     <div class="form-group">
					                        <label>아이콘 색상 선택</label>
					                        <select class="form-control" name="ecolor">
					                           <option value="fc-bg-default">기본</option>
					                           <option value="fc-bg-blue">파란색</option>
					                           <option value="fc-bg-lightgreen">연두색</option>
					                           <option value="fc-bg-pinkred">분홍색</option>
					                           <option value="fc-bg-deepskyblue">하늘색</option>
					                        </select>
					                     </div>
					                     <div class="form-group">
					                        <label>아이콘 모양 선택</label>
					                        <select class="form-control" name="eicon">
					                           <option value="circle">원</option>
					                           <option value="cog">톱니바퀴</option>
					                           <option value="group">그룹</option>
					                           <option value="suitcase">서류가방</option>
					                           <option value="calendar">캘린더</option>
					                        </select>
					                     </div>
					                  </div>
					                  <div class="modal-footer">
					                     <button type="submit" class="btn btn-primary" >저장</button>
					                     <button type="button" class="btn btn-primary" data-dismiss="modal">닫기</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Calendar Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>
	
	<!-- Js For Calendar -->
	<script src="/deskapp/vendors/scripts/core.js"></script>
	<script src="/deskapp/vendors/scripts/script.min.js"></script>
	<script src="/deskapp/vendors/scripts/process.js"></script>
	<script src="/deskapp/vendors/scripts/layout-settings.js"></script>
	<script src="/deskapp/src/plugins/fullcalendar/fullcalendar.min.js"></script>
	<script src="/deskapp/vendors/scripts/calendar-setting.js"></script>
</body>

</html>