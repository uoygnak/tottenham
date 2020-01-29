<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>판매게시판</title>
<style>
	div{
	font-family: 'Noto Sans KR', sans-serif;
	}
	</style>
</head>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='updateForm']");

						$(".cancel_btn")
								.on(
										"click",
										function() {
											location.href = "/cell/readView?bno=${replyDelete.bno}"
													+ "&page=${scri.page}"
													+ "&perPageNum=${scri.perPageNum}"
													+ "&searchType=${scri.searchType}"
													+ "&keyword=${scri.keyword}";
										})

					})
</script>
<body>
	<br>
	<br>
	<br>
	<div id="root">
		<header>
			<h1>판매게시판</h1>
		</header>
		<hr />

		<div>
			<%@include file="/WEB-INF/views/nav.jsp"%>
		</div>
		<br>
		<br>
		<hr />
		<hr />

		<section id="container">
			<form name="updateForm" role="form" method="post"
				action="/cell/replyDelete">
				<input type="hidden" name="bno" value="${replyDelete.bno}"
					readonly="readonly" /> <input type="hidden" id="rno" name="rno"
					value="${replyDelete.rno}" /> <input type="hidden" id="page"
					name="page" value="${scri.page}"> <input type="hidden"
					id="perPageNum" name="perPageNum" value="${scri.perPageNum}">
				<input type="hidden" id="searchType" name="searchType"
					value="${scri.searchType}"> <input type="hidden"
					id="keyword" name="keyword" value="${scri.keyword}">

				<div class="center-align">
					<p>삭제 하시겠습니까?</p>
					<button type="submit" class="delete_btn btn btn-default">예 삭제합니다.</button>
					<button type="button" class="cancel_btn btn btn-default">아니오. 삭제하지 않습니다.</button>
				</div>
			</form>
		</section>
		<hr />
	</div>
</body>
</html>