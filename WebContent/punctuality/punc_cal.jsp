<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/common/user_sidebar.jsp" %>

<!-- css/script src start -->
<!-- for time format -->
<script src='${root}/webjars/moment/2.14.1/moment.js'></script>

<!-- for fullcalendar -->
<link href='${root}/webjars/fullcalendar/2.9.0/dist/fullcalendar.css' rel='stylesheet'/>
<link href="${root}/webjars/fullcalendar/2.9.0/dist/fullcalendar.print.css" rel="stylesheet" media="print" />
<script src="${root}/webjars/fullcalendar/2.9.0/dist/fullcalendar.min.js"></script>
<script src='${root}/webjars/fullcalendar/2.9.0/dist/lang-all.js'></script>

<!-- for clock -->
<link rel="stylesheet" type="text/css" href="${util}/clock/jquery.tzineClock/jquery.tzineClock.css" />
<script type="text/javascript" src="${util}/clock/jquery.tzineClock/jquery.tzineClock.js"></script>
<script type="text/javascript" src="${util}/clock/script.js"></script>

<style type='text/css'>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}
</style>
<!-- css/script src end -->
<!-------------------------------------->
<!--script start -->
<!-- fullCalendar -->
<script type='text/javascript'>

	$(document).ready(function() {

		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,basicWeek,basicDay'
			},
			lang:'ko',
			defaultDate: '2016-07-07',
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'All Day Event',
					start: '2016-07-01'
				},
				{
					title: 'Long Event',
					start: '2016-07-07',
					end: '2016-07-10'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-07-09T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2016-07-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2016-07-11',
					end: '2016-07-13'
				},
				{
					title: 'Meeting',
					start: '2016-07-12T10:30:00',
					end: '2016-07-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2016-07-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2016-07-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2016-07-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2016-07-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2016-07-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2016-07-28'
				}
			]
		});
		
	});

</script>
<!--script end -->
<!----------------------------------------------------------->
<div id="wrapper"> 
   <!-- Page Content -->
    <div id="page-wrapper">
       <div class="container-fluid">
       
       <!--page subject start-->
       <div class="row">
       		<div class="col-lg-12">
       			<h1 class="page-header" align="left">출퇴근 체크</h1>
     		</div>
       	</div>
       	<!--page subject end-->
       	<!--page content start-->
       	<div class="row">
	     	<div class="col-xs-12">
	     	<!-- in/out checkbar start -->
	     		<div class="panel panel-default">
		     		<div class="panel-body">
		     		
		     		<!-- checkbar_left start -->
		     		<div class="col-md-8">
		     		<div class="panel panel-default">
			     		<div class="panel-body">
					     	  	<!-- clock start -->
						     	 <div class="row" style="margin:auto;" id="fancyClock"></div>
						     	 <!-- clock end -->
						     	 <!-- ipcheck start -->
						     	 <div class="row" style="margin:auto;">
						     	 접속IP : cf.com.kitrierp.utill.IPCheck
						     	 </div>
					     	 	<!-- ipcheck end -->
					     	 </div>
					     </div>	
				     </div>
				     <!-- checkbar_left end -->
				     	 	
				     <!-- checkbar_right: inout input start -->
				     <div class="col-md-4">
					     <div class="panel panel-default">
				     		<div class="panel-body">
						     	 <div class="checkbox">
							      <label><input type="checkbox" name="btripcheck" value="">*외근시에 체크박스를 체크해주세요.</label>
						        </div>
						        <div class="row" style="margin:auto;">
							       	<button class="btn btn-primary" type="button" onclick="">출근</button>
							       	<button class="btn btn-primary" type="button" onclick="">퇴근</button>
							     </div>
							     	<br>
							     <div class="row" style="margin:auto;">
							     	<button class="btn btn-primary" type="button" onclick="">출장</button>
						     	 	<button class="btn btn-primary" type="button" onclick="">교육</button>  	
						     	 </div>
					     	</div>  	
			     	  	</div>
			     	  </div>
			     	  <!-- checkbar_right:inout input end -->
			     	  </div>
		     	 	</div>
		     	 <!-- in/out checkbar end -->
		     	 <!-- calendar start-->
		     	  <div class="panel panel-default">
	     				<div class="panel-body">
				     	  * 캘린더 일정내용 클릭시, 근태조정신청 페이지로 이동
								<div id='calendar'></div>
						</div>
					</div>
					<!--calendar end-->
					
				</div>	
	       		</div>
	       	</div>
       	</div>
       	<!--page content end-->
       </div>
        <!-- /.container -->
     </div>
     <!-- /#page-wrapper -->
</div>
<!-- /#wrapper -->
</body>
</html> 