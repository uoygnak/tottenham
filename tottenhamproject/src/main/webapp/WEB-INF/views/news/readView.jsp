<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<!-- 합쳐지고 최소화된 최신 CSS  read view-->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>뉴스</title>
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

section{
font-size: 15pt;
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
	#content img { max-width:1500px; height:auto; }
</style>
</head>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						var formObj = $("form[name='readForm']");

						// 수정 
						$(".update_btn").on("click", function() {
							formObj.attr("action", "/news/updateView");
							formObj.attr("method", "get");
							formObj.submit();
						})

						// 삭제
						$(".delete_btn").on("click", function() {

							var deleteYN = confirm("삭제하시겠습니까?");
							if (deleteYN == true) {

								formObj.attr("action", "/news/delete");
								formObj.attr("method", "post");
								formObj.submit();

							}
						})

						// 목록
						$(".list_btn")
								.on(
										"click",
										function() {

											location.href = "/news/list?page=${scri.page}"
													+ "&perPageNum=${scri.perPageNum}"
													+ "&searchType=${scri.searchType}&keyword=${scri.keyword}";
										})

						$(".replyWriteBtn").on("click", function() {
							var formObj = $("form[name='replyForm']");
							formObj.attr("action", "/news/replyWrite");
							formObj.submit();
						});

						
					})
</script>

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
<br><br><br>
	<div class="container">
		<div>
			<%@include file="/WEB-INF/views/nav.jsp"%>
		</div>
        <br><br>
		<header>
			<h1>뉴스</h1>
		</header>
		<br>	
		<section id="container">
			<form name="readForm" role="form" method="post">
				<input type="hidden" id="bno" name="bno" value="${read.bno}" /> <input
					type="hidden" id="page" name="page" value="${scri.page}"> <input
					type="hidden" id="perPageNum" name="perPageNum"
					value="${scri.perPageNum}"> <input type="hidden"
					id="searchType" name="searchType" value="${scri.searchType}">
				<input type="hidden" id="keyword" name="keyword"
					value="${scri.keyword}">
			</form>

	           <div class="form-group">
				<div class="form-group">
					<label for="writer" class="col-sm-2 control-label">작성자</label>
					<br><br> 
					<input type="text" id="writer" name="writer" class="form-control"
			             value="${read.writer}" readonly="readonly" style="border:inset 1px silver;" />	
				</div>
				
				<div class="form-group">
				<label for="title" class="col-sm-2 control-label">제목</label>
				<br><br>
				<input type="text" id="title" name="title" class="form-control"
					value="${read.title}" readonly="readonly" style="border:inset 1px silver;" />
			    </div>
			    
			    
			<label for="content" class="col-sm-2 control-label">내용</label> 
			<br><br>
			<div id="content" name="content" class="form-control" readonly="readonly" rows="10"
			style="border:inset 1px silver; height:600px; padding:1 1 1 1;font-size:10pt; overflow:auto;  border-radius: 10px;">
			${read.content} 
            </div>
           

			<div class="form-group">
				<label for="regdate" class="col-sm-2 control-label">작성날짜</label>
				<fmt:formatDate value="${read.regdate}" pattern="yyyy-MM-dd" />
			</div>
			
			 
			 <c:if test="${member.mem_id == 'admin'}">
				<div>
					<button type="button" class="update_btn btn btn-default">수정</button>
					<button type="button" class="delete_btn btn btn-default">삭제</button>
			</c:if>			
			<button type="button" class="list_btn btn btn-default">목록</button>
				</div>
			
			
		</section>
		<hr />
	</div>
</body>
</html>