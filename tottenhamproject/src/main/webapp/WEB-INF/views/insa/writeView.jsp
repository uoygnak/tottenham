<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link
	href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean"
	rel="stylesheet">
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="/resources/ckeditor/ckeditor.js"></script>
<title>가입인사</title>
<style>
section {
	font-size: 15pt;
}

form, table, div {
	font-family: 'Sunflower', sans-serif;
}
</style>
</head>
<script type="text/javascript">
	function chkSubmit() {
		frm = document.forms["writeForm"];

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
		<%@include file="/WEB-INF/views/nav.jsp"%>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<form name="writeForm" method="post" action="/insa/write"
			onsubmit="return chkSubmit()">

			<c:if test="${member.mem_id != null}">
				<div class="row">
					<div class="col-md-3">
						<div class="form-group">
							<label for="writer">작성자</label> <input type="text"
								class="form-control" name="writer" id="writer"
								placeholder="Enter name" value="${member.mem_id}"
								readonly="readonly" title="작성자를 입력해 주세요">
						</div>
					</div>
					<hr>
					<hr>
					<hr>
					<div class="col-md-10">
						<div class="form-group">
							<label for="title">제목</label> <input type="text"
								class="form-control" name="title" id="title"
								placeholder="Enter title" title="제목을 입력해 주세요">
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
								id="content" title="내용을 입력해 주세요"></textarea>
							<script>
								var ckeditor_config = {
									resize_enaleb : false,
									enterMode : CKEDITOR.ENTER_BR,
									shiftEnterMode : CKEDITOR.ENTER_P,
									filebrowserUploadUrl : "/image/ckUpload"
								};
								CKEDITOR.replace("content", ckeditor_config);
							</script>
						</div>
					</div>

					<div class="form-group">
						<div class="center-block" style='width: 200px'>
							<button class="write_btn  btn btn-success" type="submit">작성</button>
						</div>
					</div>
				</div>
			</c:if>
		</form>

		<c:if test="${member.mem_id == null}">
			<br>
			<br>
			<br>
			<p>로그인 후에 작성하실 수 있습니다.</p>
		</c:if>
		<hr />
	</div>
</body>
</html>