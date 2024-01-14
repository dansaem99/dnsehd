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
    
    <script src='https://cdn.jsdelivr.net/npm/@fullcalendar/core@6.1.10/index.global.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/@fullcalendar/web-component@6.1.10/index.global.min.js'></script>
<script src='https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@6.1.10/index.global.min.js'></script>	
    
    <!-- Calendar Config Begin -->
	<script src='fullcalendar-6.1.10/dist/index.global.js'></script>
	<script>
		
	  document.addEventListener('DOMContentLoaded', function() {
	    var calendarEl = document.getElementById('calendar');
		
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	      headerToolbar: {
	        left: 'prevYear,prev,next,nextYear today',
	        center: 'title',
	        right: 'dayGridMonth'
	      },
	      initialDate: '2023-01-12',
	      navLinks: true, // can click day/week names to navigate views
	      selectable: true,
	      selectMirror: true,
	      select: function(arg) {
	        var title = prompt('Event Title:');
	        if (title) {
	          calendar.addEvent({
	            title: title,
	            start: arg.start,
	            end: arg.end,
	            allDay: arg.allDay
	          })
	        }
	        calendar.unselect()
	      },
	      eventClick: function(arg) {
	        if (confirm('Are you sure you want to delete this event?')) {
	          arg.event.remove()
	        }
	      },
	      editable: true,
	      dayMaxEvents: true, // allow "more" link when too many events
	      events: [
	        {
	          title: 'All Day Event',
	          start: '2023-01-01'
	        },
	        {
	          title: 'Long Event',
	          start: '2023-01-07',
	          end: '2023-01-10'
	        },
	        {
	          groupId: 999,
	          title: 'Repeating Event',
	          start: '2023-01-09T16:00:00'
	        },
	        {
	          groupId: 999,
	          title: 'Repeating Event',
	          start: '2023-01-16T16:00:00'
	        },
	        {
	          title: 'Conference',
	          start: '2023-01-11',
	          end: '2023-01-13'
	        },
	        {
	          title: 'Meeting',
	          start: '2023-01-12T10:30:00',
	          end: '2023-01-12T12:30:00'
	        },
	        {
	          title: 'Lunch',
	          start: '2023-01-12T12:00:00'
	        },
	        {
	          title: 'Meeting',
	          start: '2023-01-12T14:30:00'
	        },
	        {
	          title: 'Happy Hour',
	          start: '2023-01-12T17:30:00'
	        },
	        {
	          title: 'Dinner',
	          start: '2023-01-12T20:00:00'
	        },
	        {
	          title: 'Birthday Party',
	          start: '2023-01-13T07:00:00'
	        },
	        {
	          title: 'Click for Google',
	          url: 'http://google.com/',
	          start: '2023-01-28'
	        }
	      ]
	    });
	
	    calendar.render();
	  });
	
	</script>

<style>

  body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }

</style>
	<!-- Calendar Config End -->
</head>

<body>
	<!-- header section -->
	<jsp:include page="../header/header.jsp"></jsp:include>

    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-option">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb__links">
                        <a href="main"><i class="fa fa-home"></i> Home</a>
                        <span>Callendar</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->	
    
    <div class="mb-4"></div>
    
	<!-- Calendar Section Start -->
	<div class="col-lg-6 px-5">
		<div id='calendar'></div>
	</div>
	<!-- Calendar Section End -->

	<!-- footer section -->
	<jsp:include page="../footer/footer.jsp"></jsp:include>

</body>

</html>