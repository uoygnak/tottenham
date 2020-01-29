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
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
.floating {
	background-color: #f9f9f9;
	border: 1px solid #b1b1b1;
	position: fixed;
	right: 50%;
	top: 140px;
	margin-right: -970px;
	text-align: center;
	width: 150px;
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
    font-family: 'Noto Sans KR', sans-serif;
	font-size : 20px;
	}
	table{
	font-family: 'Noto Sans KR', sans-serif;
	font-size : 20px;
	}
	div{
	font-family: 'Noto Sans KR', sans-serif;
	}
	
	.sogae{
	width: 1500px;
	height: 250px;
	}
</style>
</head>
<body>
<br><br><br>
	<div class="floating">
	<h3>Official</h3>
	    <br>
	    <a href='https://www.youtube.com/channel/UCEg25rdRZXg32iwai6N6l0w' target='_blank'>
		<div id = "img1"><img src='/resources/img/banner/youtube_grey.png' onmouseover="this.src='/resources/img/banner/youtube_color.png'" onmouseout="this.src='/resources/img/banner/youtube_grey.png'" /> </div>
		</a>
		<br>
		 <a href='https://www.instagram.com/spursofficial/?hl=ko' target='_blank'>
		<div id = "img2"><img src='/resources/img/banner/instagram_grey.png' onmouseover="this.src='/resources/img/banner/instagram_color.png'" onmouseout="this.src='/resources/img/banner/instagram_grey.png'" /> </div>
		</a>
		<br>
		 <a href='https://ko-kr.facebook.com/TottenhamHotspur/' target='_blank'>
		<div id = "img3"><img src='/resources/img/banner/facebook_grey.png' onmouseover="this.src='/resources/img/banner/facebook_color.png'" onmouseout="this.src='/resources/img/banner/facebook_grey.png'" /> </div>
		</a>
		<br>
		 <a href='https://www.tottenhamhotspur.com/kr/' target='_blank'>
		<div id = "img4"><img src='/resources/img/banner/tottenham_grey.png' onmouseover="this.src='/resources/img/banner/tottenham_color.png'" onmouseout="this.src='/resources/img/banner/tottenham_grey.png'" /> </div>
		</a>
		<br>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="form-group">
				<img class="sogae"src="/resources/img/구단정보.png" style="margin-left: auto; margin-right: auto; display: block;">
			</div>
	<div class="container">	
	<div>
<%@include file="/WEB-INF/views/nav.jsp"%>	
	</div>
	<br>
	<br>
	<br>
		<section id="container">
			<div class="form-group">
				<img alt="center" src="/resources/img/내용.png" style="margin-left: auto; margin-right: auto; display: block;">
			</div>
		</section>
	</div>
	<br><br><br>
	<br><br><br>
	<br><br><br>
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