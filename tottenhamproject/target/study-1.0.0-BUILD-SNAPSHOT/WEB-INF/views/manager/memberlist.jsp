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
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
<title>회원목록 및 관리</title>
<style>
section{
font-size: 15pt;
}
form,table,div{
    font-family: 'Sunflower', sans-serif;
	}
</style>
</head>

<body>
    <div class="container">
		<br> <br> <br>
		<div>
			<%@include file="/WEB-INF/views/nav.jsp"%>
		</div>
		<br> <br>
		<header>
			<h1>회원 목록</h1>
		</header>
    <section id="container">
	<form name="readForm" role="form" method="post">
    <table class="table table-hover" border = "1"  >
    <tr>
    <th>회원번호</th>
    <th>아이디</th>
    <th>성명</th>
    <th>생년월일</th>
    <th>전자메일</th>
    <th>휴대전화</th>
    <th>성별</th>
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
    </form>
    </section>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
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