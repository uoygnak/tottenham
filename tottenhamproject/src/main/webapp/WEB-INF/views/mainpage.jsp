<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/common.css">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="/resources/js/Backstretch.js"></script>
<script language="javascript">
function pop(){
window.open("/popup", "pop", "width=446,height=450,history=no,resizable=no,status=no,scrollbars=yes,menubar=no")
}
</script>
<style>
form {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 20px;
}

table {
	font-family: 'Noto Sans KR', sans-serif;
	font-size: 20px;
}

div {
	font-family: 'Noto Sans KR', sans-serif;
}


</style>
</head>
<%@include file="/WEB-INF/views/mainnav.jsp"%>
<body onload="javascript:pop()">
	<br>
	<br>
	<br>
	<div class="container">
		<div class="form-group">
		<script>
		 $(function(){
             $.backstretch([
            	 "resources/img/background/main1.png",
                 "resources/img/background/main2.png", 
                 "resources/img/background/main3.png"
             ], {duration:2500, fade:750 });            
         });
</script>
<br><br><br><br><br><br><br><br><br>
<br><br><br>
	<h1 style="font-size:100px; color:#FFFFFF;">Welcome to COYS</h1>
	<p style="font-size:50px; color:#FFFFFF;">tottenham hotspur korea fanpage</p>
	<p style="font-size:50px; color:#FFFFFF;">TO DARE IS TO DO !!</p>
		</div>
	</div>
	

</body>
</html>