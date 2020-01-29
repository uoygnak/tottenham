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
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="/resources/ckeditor/ckeditor.js"></script>

<title>구매게시판</title>

<style>
section {
	font-size: 15pt;
}

form, table, div {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(
			function() {
				var formObj = $("form[name='updateForm']");

				$(".cancel_btn").on(
						"click",
						function() {
							event.preventDefault();
							location.href = "/buy/readView?bno=${update.bno}"
									+ "&page=${scri.page}"
									+ "&perPageNum=${scri.perPageNum}"
									+ "&searchType=${scri.searchType}"
									+ "&keyword=${scri.keyword}";
						})

			})

	function chkSubmit() {
		frm = document.forms["updateForm"];

		var writer = frm["writer"].value.trim();
		var title = frm["title"].value.trim();
		var content = CKEDITOR.instances['content'].getData();
		if (writer == "") {
			alert("작성자 란은 반드시 입력해야 합니다.");
			frm["wrtie"].focus();
			return false;
		} else if (title == "") {
			alert("제목은 반드시 작성해야 합니다");
			frm["title"].focus();
			return false;
		} else if (content == "") {
			alert("내용은 반드시 작성해야 합니다");
			frm["content"].focus();
			return false;
		}
		return true;
	} // end fn_valichk
</script>
<body>
	<br>
	<br>
	<br>
	<div id="root">
		<div>
			<%@include file="/WEB-INF/views/nav.jsp"%>
		</div>
		<br>
		<br>
		<br>
		<header>
			<h1>게시글 수정</h1>
		</header>
        <br>
		<section id="container">
			<form name="updateForm" role="form" method="post"
				onsubmit="return chkSubmit()" action="/buy/update">
				<input type="hidden" name="bno" value="${update.bno}"
					readonly="readonly" /> <input type="hidden" id="page" name="page"
					value="${scri.page}"> <input type="hidden" id="perPageNum"
					name="perPageNum" value="${scri.perPageNum}"> <input
					type="hidden" id="searchType" name="searchType"
					value="${scri.searchType}"> <input type="hidden"
					id="keyword" name="keyword" value="${scri.keyword}">
				<table>
					<tbody>
						<div class="row">
							<div class="col-md-3">
								<div class="form-group">
									<label for="writer">작성자</label> <input type="text"
										class="form-control" name="writer" id="writer"
										placeholder="Enter name" value="${update.writer}"
										readonly="readonly">
								</div>
							</div>
							<hr>
							<hr>
							<hr>
							<div class="col-md-10">
								<div class="form-group">
									<label for="title">제목</label> <input type="text"
										class="form-control" name="title" id="title"
										placeholder="Enter title" value="${update.title}">
								</div>
							</div>
							<hr>
							<hr>
							<hr>
							<hr>
							<div class="col-md-10">
								<div class="form-group">
									<label for="content">내용</label>
									<textarea class="form-control" rows="10" name="content"
										id="content">
										<c:out value="${update.content}" />
										</textarea>
									<script>
										var ckeditor_config = {
											resize_enaleb : false,
											enterMode : CKEDITOR.ENTER_BR,
											shiftEnterMode : CKEDITOR.ENTER_P,
											filebrowserUploadUrl : "/image/ckUpload"
										};
										CKEDITOR.replace("content",
												ckeditor_config);
									</script>
								</div>
							</div>
							<tr>
								<td><label for="regdate">작성날짜</label> <fmt:formatDate
										value="${update.regdate}" pattern="yy-MM-dd" /></td>
							</tr>
					</tbody>
				</table>
				<div class="form-group">
					<div class="center-block" style='width: 200px'>
						<button class="btn btn-default update_btn"
							type="submit">수정</button>
						<button class="btn btn-default  cancel_btn"
							type="button">취소</button>
					</div>
				</div>
	</div>
	</form>
	</form>
	</section>
	<hr />
	</div>
</body>
</html>