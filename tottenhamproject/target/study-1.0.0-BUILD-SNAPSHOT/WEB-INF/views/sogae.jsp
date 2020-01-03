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
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
<style>
.floating {
	background-color: #f9f9f9;
	border: 2px solid #000;
	position: fixed;
	right: 50%;
	top: 110px;
	margin-right: -900px;
	text-align: center;
	width: 200px;
	border-radius: 8px;
	-webkit-border-radius: 8px;
}

.floating div:nth-child(1) {
	border-radius: 8px;
}

.floating div:nth-child(2) {
	border-radius: 8px;
}

.floating div:nth-child(3) {
	border-radius: 8px;
}

.floating div:nth-child(4) {
	border-radius: 8px;
}
form{
    font-family: 'Sunflower', sans-serif;
	font-size : 20px;
	}
	table{
	font-family: 'Sunflower', sans-serif;
	font-size : 20px;
	}
	div{
	font-family: 'Sunflower', sans-serif;
	}
</style>
</head>
<%@include file="/WEB-INF/views/nav.jsp"%>
<body>
<div class="floating">
	<h2>공식 채널</h2>
	    <br>
	    <a href='https://www.youtube.com/channel/UCEg25rdRZXg32iwai6N6l0w' target='_blank'>
		<div><img src='/resources/img/banner/유튜브로고.png' /> </div>
		</a>
		<br>
		 <a href='https://www.instagram.com/spursofficial/?hl=ko' target='_blank'>
		<div><img src='/resources/img/banner/인스타로고.png' /> </div>
		</a>
		<br>
		 <a href='https://ko-kr.facebook.com/TottenhamHotspur/' target='_blank'>
		<div><img src='/resources/img/banner/페이스북로고.png' /> </div>
		</a>
		<br>
		 <a href='https://www.tottenhamhotspur.com/kr/' target='_blank'>
		<div><img src='/resources/img/banner/토트넘로고.png' /> </div>
		</a>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">

		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<img alt="center" src="/resources/img/ttm.jpg">
			</div>
		</section>
	</div>
	<!-- footer -->
	<div class="jumbotron text-center mt-5 mb-0">
		<h3 class="text-secondary">Tottenham Hotspur Football Club</h3>
		<p>
			Tottenham Hotspur Football Club Fanpage is powered by <span
				class="text-primary">nijxxuoy</span> / Designed by <span
				class="text-primary">nijxxuoy</span>
		</p>
	</div>

</body>
</html>