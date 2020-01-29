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
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="icon" type="image/png"	href="resources/images/icons/brand.ico" />
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<title>회원목록 및 관리</title>
<style>
section{
font-size: 15pt;
}
form,table,div{
   font-family: 'Noto Sans KR', sans-serif;
	}

</style>
</head>

<body>
    <div class="container">
		<br>
		<br>
		<br>
		<div>
			<%@include file="/WEB-INF/views/nav.jsp"%>
		</div>
		<br>
		<br>
		<br>
		<br>
		<br>
		<header>
			<h1>회원 목록</h1>
		</header>
		<br><br><br>
    <section id="container">
	<form name="readForm" role="form" method="get">
    <table class="table table-hover" border = "1"  >
    <tr>
    <th width="78">회원번호</th>
    <th>아이디</th>
    <th width="63">성명</th>
    <th>생년월일</th>
    <th>전자메일</th>
    <th>휴대전화</th>
    <th width="50">성별</th>
    <th>도로명주소</th>
    <th>주소</th>
    <th>상세주소</th>
    </tr>
    <c:forEach var="row" items="${list}">
    <tr>
    <td>${row.bno}</td>
    <td>${row.mem_id}</td>
    <td>${row.mem_name}</td>
    <td>${row.mem_birth}</td>
    <td>${row.mem_email}</td>
    <td>${row.mem_phone}</td>
    <td>${row.mem_gender}</td>
    <td>${row.mem_oaddress}</td>
    <td>${row.mem_address}</td>
    <td>${row.mem_detailaddress}</td>
    </tr>
    </c:forEach>
    </table>
    <div class="search row">
    <div class="col-xs-2 col-sm-2">
    <select name="searchType" class="form-control">
      <option value="n"<c:out value="${scri.searchType == null ? 'selected' : ''}"/>>-----</option>
      <option value="i"<c:out value="${scri.searchType eq 'i' ? 'selected' : ''}"/>>아이디</option>
      <option value="n"<c:out value="${scri.searchType eq 'n' ? 'selected' : ''}"/>>이름</option>
      <option value="b"<c:out value="${scri.searchType eq 'b' ? 'selected' : ''}"/>>회원번호</option>
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
      $(function(){
        $('#searchBtn').click(function() {
          self.location = "memberlist" + '${pageMaker.makeQuery(1)}' + "&searchType=" + $("select option:selected").val() + "&keyword=" + encodeURIComponent($('#keywordInput').val());
        });
      });   
    </script>
  </div>
    <div class="col-md-offset-3">
  <ul class="pagination">
    <c:if test="${pageMaker.prev}">
    	<li><a href="list${pageMaker.makeSearch(pageMaker.startPage - 1)}">이전</a></li>
    </c:if> 

    <c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
    	<li><a href="list${pageMaker.makeSearch(idx)}">${idx}</a></li>
    </c:forEach>

    <c:if test="${pageMaker.next && pageMaker.endPage > 0}">
    	<li><a href="list${pageMaker.makeSearch(pageMaker.endPage + 1)}">다음</a></li>
    </c:if> 
  </ul>
</div>
    </form>
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
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