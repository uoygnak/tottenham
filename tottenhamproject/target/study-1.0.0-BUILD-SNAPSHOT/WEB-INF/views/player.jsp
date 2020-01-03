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
		<br> <a
			href='https://www.youtube.com/channel/UCEg25rdRZXg32iwai6N6l0w'
			target='_blank'>
			<div>
				<img src='/resources/img/banner/유튜브로고.png' />
			</div>
		</a> <br> <a href='https://www.instagram.com/spursofficial/?hl=ko'
			target='_blank'>
			<div>
				<img src='/resources/img/banner/인스타로고.png' />
			</div>
		</a> <br> <a href='https://ko-kr.facebook.com/TottenhamHotspur/'
			target='_blank'>
			<div>
				<img src='/resources/img/banner/페이스북로고.png' />
			</div>
		</a> <br> <a href='https://www.tottenhamhotspur.com/kr/'
			target='_blank'>
			<div>
				<img src='/resources/img/banner/토트넘로고.png' />
			</div>
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
				<img src="/resources/img/player/퍼스트팀.jpg">
			</div>
		</section>
		<h2>클릭 시 상세정보로 넘어갑니다.</h2>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>
		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%EC%9C%84%EA%B3%A0%20%EC%9A%94%EB%A6%AC%EC%8A%A4"><img
					src="/resources/img/player/1요리스.jpg"></a> <a
					href="https://namu.wiki/w/%EB%8C%80%EB%8B%88%20%EB%A1%9C%EC%A6%88"><img
					src="/resources/img/player/2로즈.jpg"></a> <a
					href="https://namu.wiki/w/%ED%86%A0%EB%B9%84%20%EC%95%8C%EB%8D%B0%EB%A5%B4%EB%B2%A0%EC%9D%B4%EB%9F%B4%ED%8A%B8"><img
					src="/resources/img/player/3토비알더.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%EC%96%80%20%EB%B2%A0%EB%A5%B4%ED%86%B5%EC%96%B8"><img
					src="/resources/img/player/4베르통언.jpg"></a> <a
					href="https://namu.wiki/w/%EB%8B%A4%EB%B9%88%EC%86%90%20%EC%82%B0%EC%B2%B4%EC%8A%A4"><img
					src="/resources/img/player/5산체즈.jpg"></a> <a
					href="https://namu.wiki/w/%EC%86%90%ED%9D%A5%EB%AF%BC"><img
					src="/resources/img/player/6손흥민.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%ED%95%B4%EB%A6%AC%20%EC%9C%99%ED%81%AC%EC%8A%A4"><img
					src="/resources/img/player/7윙크스.jpg"></a> <a
					href="https://namu.wiki/w/%ED%95%B4%EB%A6%AC%20%EC%BC%80%EC%9D%B8"><img
					src="/resources/img/player/8케인.jpg"></a> <a
					href="https://namu.wiki/w/%EC%97%90%EB%A6%AD%20%EB%9D%BC%EB%A9%9C%EB%9D%BC"><img
					src="/resources/img/player/9라멜라.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%EB%B9%85%ED%84%B0%20%EC%99%84%EC%95%BC%EB%A7%88"><img
					src="/resources/img/player/10완야마.jpg"></a> <a
					href="https://namu.wiki/w/%EB%AF%B8%EC%85%B8%20%ED%8F%AC%EB%A6%84"><img
					src="/resources/img/player/11마이클봄.jpg"></a> <a
					href="https://namu.wiki/w/%EC%97%90%EB%A6%AD%20%EB%8B%A4%EC%9D%B4%EC%96%B4"><img
					src="/resources/img/player/12다이어.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%EC%B9%B4%EC%9D%BC%20%EC%9B%8C%EC%BB%A4%ED%94%BC%ED%84%B0%EC%8A%A4"><img
					src="/resources/img/player/13카일워커.jpg"></a> <a
					href="https://namu.wiki/w/%EB%AC%B4%EC%82%AC%20%EC%8B%9C%EC%86%8C%EC%BD%94"><img
					src="/resources/img/player/14시소코.jpg"></a> <a
					href="https://namu.wiki/w/%EC%A7%80%EC%98%A4%EB%B0%94%EB%8B%88%20%EB%A1%9C%EC%85%80%EC%86%8C"><img
					src="/resources/img/player/15로셀로.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%EB%9D%BC%EC%9D%B4%EC%96%B8%20%EC%84%B8%EC%84%B8%EB%87%BD"><img
					src="/resources/img/player/16세세뇽.jpg"></a> <a
					href="https://namu.wiki/w/%EB%8D%B8%EB%A6%AC%20%EC%95%8C%EB%A6%AC?from=%EB%8D%B8%EB%A0%88%20%EC%95%8C%EB%A6%AC"><img
					src="/resources/img/player/17알리.jpg"></a> <a
					href="https://namu.wiki/w/%ED%9B%84%EC%95%88%20%ED%8F%AC%EC%9D%B4%EC%8A%A4"><img
					src="/resources/img/player/18포이스.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%ED%8C%8C%EC%9A%B8%EB%A1%9C%20%EA%B0%80%EC%9E%90%EB%8B%88%EA%B0%80"><img
					src="/resources/img/player/19가자니가.jpg"></a> <a
					href="https://namu.wiki/w/%ED%81%AC%EB%A6%AC%EC%8A%A4%ED%8B%B0%EC%95%88%20%EC%97%90%EB%A6%AD%EC%84%BC"><img
					src="/resources/img/player/20에릭센.jpg"></a> <a
					href="https://namu.wiki/w/%EC%84%B8%EB%A5%B4%EC%A3%BC%20%EC%98%A4%EB%A6%AC%EC%97%90"><img
					src="/resources/img/player/21오리에.jpg"></a>
			</div>
		</section>
		<br>
		<br>
		<br>
		<br>
		<br>
		<br>

		<section id="container">
			<div class="form-group">
				<a
					href="https://namu.wiki/w/%EB%A3%A8%EC%B9%B4%EC%8A%A4%20%EB%AA%A8%EB%9D%BC"><img
					src="/resources/img/player/22모우라.jpg"></a> <a
					href="https://namu.wiki/w/%ED%83%95%EA%B8%B0%20%EC%9D%80%EB%8F%94%EB%B2%A8%EB%A0%88"><img
					src="/resources/img/player/23은돔벨레.jpg"></a> <a
					href="https://namu.wiki/w/%EB%B2%A4%20%EB%8D%B0%EC%9D%B4%EB%B9%84%EC%8A%A4"><img
					src="/resources/img/player/24벤데이비스.jpg"></a>
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