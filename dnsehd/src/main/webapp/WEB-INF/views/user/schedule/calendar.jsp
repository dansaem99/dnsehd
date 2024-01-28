<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">

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
    
    <link href="adminkit-3.1.0/static/css/app.css" rel="stylesheet">
    
    <script src="/jquery/jquery-3.6.1.min.js"></script>
    
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
            <div class="row">
                <!-- calendar card -->
                <div class="col col-12 col-md-6 order-1 order-xxl-1">
                    <div class="card flex-fill">
                        <div class="card-header">
                            <h5 class="card-title mb-0">Calendar</h5>
                        </div>
                        <div class="card-body d-flex">
                            <div class="align-self-center w-100">
                                <div class="chart">
                                    <div id="datetimepicker-dashboard" class="datetimepicker-dashboard"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- calendar card -->
                <div class="col-lg-5">
                    <div class="checkout__order">
                        <div class="row">
                            <div class="col">
                                <h4>건강 다이어리</h4>
                            </div>
                            <div class="col" align="right">
                                <h6><span id="enrollDt"></span></h6>
                            </div>
                        </div>
                        <hr>
                        <div class="checkout__order__product">
                            <ul>
                                <li>
                                    <label>수업 후 간단한 소감을 적어볼까요?</label>
                                    <textarea class="form-control" name="memo" id="memo"></textarea>
                                    <input type="hidden" name="memberId" id="memberId" value="${sessionScope.memberId }">
                                    <input type="hidden" name="scheduleNo" id="scheduleNo" >
                                </li>
                                <li>
                                    <label>아침</label>
                                    <input type="text" class="form-control" name="breakfast" id="breakfast">
                                </li>
                                <li>
                                    <label>점심</label>
                                    <input type="text" class="form-control" name="lunch" id="lunch">
                                </li>
                                <li>
                                    <label>저녁</label>
                                    <input type="text" class="form-control" name="dinner" id="dinner">
                                </li>
                                <li>
                                    <label>간식</label>
                                    <input type="text" class="form-control" name="snack" id="snack">
                                </li>
                                <li>
                                    <label>야식</label>
                                    <input type="text" class="form-control" name="midnightSnack" id="midnightSnack">
                                </li>
                                <li>
                                    <button type="button" id="saveButton" class="btn btn-primary">저장</button>
                                    <button type="button" id="modifyButton" class="btn btn-primary">수정</button>
                                    <button type="button" id="deleteButton" class="btn btn-primary">삭제</button>
                                </li>
                            </ul>
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
    <script src="adminkit-3.1.0/static/js/app.js"></script>
	<script>
	    $(document).ready(function() {
	        var date = new Date(Date.now() - 5 * 24 * 60 * 60 * 1000);
	        var defaultDate = date.getUTCFullYear() + "-" + (date.getUTCMonth() + 1) + "-" + date.getUTCDate();
	
	        var isDataAlreadyExists = false;  // 데이터가 이미 존재하는지 여부를 나타내는 변수
	        
	        // 특정 날짜를 배열로 정의합니다 (예시: 'YYYY-MM-DD' 형식)
	        var specialDates = [];
	
	        $("#datetimepicker-dashboard").flatpickr({
	            inline: true,
	            prevArrow: "<span title='Previous month'>&laquo;</span>",
	            nextArrow: "<span title='Next month'>&raquo;</span>",
	            defaultDate: defaultDate,
	            onDayCreate: function(dObj, dStr, fp, dayElem) {
	                // 각 날짜에 대해 실행
	                var date = dayElem.dateObj;
	                var formattedDate = date.getFullYear() + "-" + (date.getMonth() + 1).toString().padStart(2, '0') + "-" + date.getDate().toString().padStart(2, '0');
	
	                // 특정 날짜 배열에 있는지 확인
	                if (specialDates.includes(formattedDate)) {
	                    // 특정 날짜에 클래스 추가
	                    dayElem.classList.add("special-date");
	
	                    // 필요하다면 텍스트나 HTML 요소 추가
	                    dayElem.innerHTML += "<span class='special-marker' style='color:red;'>*</span>";
	                }
	            },
	            onChange: function(selectedDates, dateStr, instance) {
	                // selectedDates: 선택된 날짜들의 배열 (Date 객체들)
	                // dateStr: 선택된 날짜의 문자열 표현 ('YYYY-MM-DD' 형식)
	                // instance: flatpickr 인스턴스
	
	                // 이곳에서 원하는 로직을 수행합니다.
	                // 예: 선택된 날짜를 콘솔에 출력
	                enrollDt = dateStr;
	                console.log("Selected date: " + dateStr);

	                seeDataOnPage();
	            }
	        });
	
	        function seeDataOnPage() {
	            var enrollDt = $("#datetimepicker-dashboard").val();
	            var memberId = $("#memberId").val();
	
	            $.ajax({
	                url: "/calendar/" + enrollDt + "/" + memberId,
	                type: "GET",
	                contentType: "application/json",
	                success: function(data) {
	                    console.log("Data retrieved from server:", data);
	                    
	                    $("#enrollDt").text(data.enrollDt || '');
	                    
	                    $("#memo").val(data.memo);
	                    $("#breakfast").val(data.breakfast);
	                    $("#lunch").val(data.lunch);
	                    $("#dinner").val(data.dinner);
	                    $("#snack").val(data.snack);
	                    $("#midnightSnack").val(data.midnightSnack);
	                    
	                    isDataAlreadyExists = !!data.enrollDt;
	                    updateButtonStatus();
	                },
	                error: function(error) {
	                    console.error("There was a problem with the AJAX operation:", error);
	                }
	            });
	        }
	
	        function updateButtonStatus() {
	            $("#saveButton").prop("disabled", isDataAlreadyExists);
	            $("#modifyButton").prop("disabled", !isDataAlreadyExists);
	            $("#deleteButton").prop("disabled", !isDataAlreadyExists);
	        }
	
	        $("#seeButton").on("click", seeDataOnPage);
	
	        function saveDataToServer() {
	            if (isDataAlreadyExists) {
	                alert("이미 데이터가 존재합니다.");
	                return;
	            }
	
	            var enrollDt = $("#datetimepicker-dashboard").val();
	            var data = {
	                memberId: $("#memberId").val(),
	                memo: $("#memo").val(),
	                breakfast: $("#breakfast").val(),
	                lunch: $("#lunch").val(),
	                dinner: $("#dinner").val(),
	                snack: $("#snack").val(),
	                midnightSnack: $("#midnightSnack").val(),
	                enrollDt: enrollDt
	            };
	
	            $.ajax({
	                url: "/calendar",
	                type: "POST",
	                contentType: "application/json",
	                data: JSON.stringify(data),
	                success: function(response) {
	                    console.log("Data saved successfully:", response);
	                    isDataAlreadyExists = true;
	                    updateButtonStatus();
	                },
	                error: function(error) {
	                    console.error("There was a problem with the AJAX operation:", error);
	                }
	            });
	        }
	
	        $("#saveButton").on("click", saveDataToServer);
	
	        function modifyDataToServer() {
	            var enrollDt = $("#datetimepicker-dashboard").val();
	            var memberId = $("#memberId").val();
	
	            var data = {
	                memberId: memberId,
	                memo: $("#memo").val(),
	                breakfast: $("#breakfast").val(),
	                lunch: $("#lunch").val(),
	                dinner: $("#dinner").val(),
	                snack: $("#snack").val(),
	                midnightSnack: $("#midnightSnack").val(),
	                enrollDt: enrollDt
	            };
	
	            $.ajax({
	                url: "/calendar/" + enrollDt + "/" + memberId,
	                type: "PUT",
	                contentType: "application/json",
	                data: JSON.stringify(data),
	                success: function(response) {
	                    console.log("Data modified successfully:", response);
	                },
	                error: function(error) {
	                    console.error("There was a problem with the AJAX operation:", error);
	                }
	            });
	        }
	
	        $("#modifyButton").on("click", modifyDataToServer);
	
	        function deleteDataFromServer() {
	            var enrollDt = $("#datetimepicker-dashboard").val();
	            var memberId = $("#memberId").val();
	
	            var data = {
	                enrollDt: enrollDt,
	                memberId: memberId
	            };
	
	            $.ajax({
	                url: "/calendar/" + enrollDt + "/" + memberId,
	                type: "DELETE",
	                contentType: "application/json",
	                data: JSON.stringify(data),
	                success: function(response) {
	                    console.log("Data deleted successfully:", response);
	                    isDataAlreadyExists = false;
	                    updateButtonStatus();
	                },
	                error: function(error) {
	                    console.error("There was a problem with the AJAX operation:", error);
	                }
	            });
	        }
	
	        $("#deleteButton").on("click", deleteDataFromServer);
	    });
	</script>
</body>
</html>

