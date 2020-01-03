<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<title>구매게시판</title>
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

	<div class="container">
		<br>
		<br>
		<br>
		<div>
			<%@include file="/WEB-INF/views/nav.jsp"%>
		</div>
		<br>
		<br>
		<header>
			<h1>판매게시판</h1>
		</header>

		<section id="container">
			<form role="form" method="get">
				<table id="list" class="table table-hover">
					<thead>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일</th>
						</tr>
					</thead>

					<c:forEach items="${list}" var="list">
						<tr>
							<td><c:out value="${list.bno}" /></td>
							<td><a
								href="/cell/readView?bno=${list.bno}&page=${scri.page}&perPageNum=${scri.perPageNum}&searchType=${scri.searchType}&keyword=${scri.keyword}"><c:out
										value="${list.title}" /> </a></td>
							<td><c:out value="${list.writer}" /></td>
							<td><fmt:formatDate value="${list.regdate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
					<li><a href="/cell/writeView">글 작성</a></li>
				</table>
				<div class="search row">
					<div class="col-xs-2 col-sm-2">
						<select name="searchType" class="form-control">
							<option value="n"
								<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
							<option value="t"
								<c:out value="${scri.searchType eq 't' ? 'selected' : ''}"/>>제목</option>
							<option value="c"
								<c:out value="${scri.searchType eq 'c' ? 'selected' : ''}"/>>내용</option>
							<option value="w"
								<c:out value="${scri.searchType eq 'w' ? 'selected' : ''}"/>>작성자</option>
							<option value="tc"
								<c:out value="${scri.searchType eq 'tc' ? 'selected' : ''}"/>>제목+내용</option>
						</select>
					</div>

					<div class="col-xs-10 col-sm-10">
						<div class="input-group">
							<input type="text" name="keyword" id="keywordInput"
								value="${scri.keyword}" class="form-control" /> <span
								class="input-group-btn">
								<button id="searchBtn" type="button" class="btn btn-default">검색</button>
							</span>
						</div>
					</div>

					<script>
						$(function() {
							$('#searchBtn')
									.click(
											function() {
												self.location = "list"
														+ '${pageMaker.makeQuery(1)}'
														+ "&searchType="
														+ $(
																"select option:selected")
																.val()
														+ "&keyword="
														+ encodeURIComponent($(
																'#keywordInput')
																.val());
											});
						});
					</script>
				</div>
				<div class="col-md-offset-3">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage}"
							end="${pageMaker.endPage}" var="idx">
							<li
								<c:out value="${pageMaker.cri.page == idx ? 'class=info' : ''}" />>
								<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
							<li><a
								href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
						</c:if>
					</ul>
				</div>
			</form>
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