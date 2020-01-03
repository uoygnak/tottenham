<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<style>
	header {
	font-family: 'Sunflower', sans-serif;
	font-size : 30px;
	}
	
	
	</style>
<link rel="stylesheet" href="/resources/css/nav.css">
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap&subset=korean" rel="stylesheet">
<header class="navbar navbar-inverse navbar-fixed-top bs-docs-nav" role="banner">
<script type="text/javascript">
	// 로그아웃 버튼 이벤트
	$(document).ready(function() {
		$("#logoutBtn").on("click", function() {
			location.href = "/member/logout";
		})
	})
	</script>
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="/" class="navbar-brand">
     <img alt="brand" src="/resources/img/brand.png" style="width:60px;">
      </a>
    </div>
    <br>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
       <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">구단소개<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/sogae">구단정보</a></li>
	          <li><a href="/player">선수단정보</a></li>
	        </ul>
	      </li>
        <li>
          <a href="/gongji/list">공지사항</a>
        </li>
       <li>
          <a href="/news/list">뉴스</a>
        </li>
        <li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">커뮤니티<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/board/list">자유게시판</a></li>
	          <li><a href="/qa/list">Q&A</a></li>
	          <li><a href="/insa/list">가입인사</a></li>
	        </ul>
	      </li>
	       <li>
          <a href="/jaryo/list">자료실</a>
        </li>
        	<li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">중고장터<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/buy/list">삽니다</a></li>
	          <li><a href="/cell/list">팝니다</a></li>
	        </ul>
	      </li>
	      <c:if test="${member.mem_id == null}">
	       <li><a href="/login">로그인</a></li>
	      </c:if>
        <c:if test="${member.mem_id != null}">
				<li class="dropdown">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">마이페이지<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/member/memberUpdateView">회원정보수정</a></li>
	          <li><a href="/member/memberDeleteView">회원탈퇴</a></li>
	          <li><a id="logoutBtn">로그아웃</a></li>
	        </ul>
	      </li>
        </c:if>
        <c:if test="${member.mem_id == 'admin'}">
         <li>
          <a href="/manager/memberlist">관리자</a>
        </li>
        </c:if>
      </ul>
    </nav>
  </div>
</header>