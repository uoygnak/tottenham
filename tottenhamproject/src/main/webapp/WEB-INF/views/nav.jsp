<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<style>
	header {
	font-family: 'Sunflower', sans-serif;
	font-size : 20px;
	}
	
	li{
   list-style:none;
   padding-left:10px;
   padding-right:10px;
   padding-bottom:10px;
   }
   
.navbar .navbar-collapse {

  text-align: center;

}

.navbar .navbar-nav {

  display: inline-block;

  float: none;

}



	</style>
<link rel="stylesheet" href="/resources/css/nav2.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet"> 
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
  <div style=" position: absolute; right: 100px; top: 10px;">
	  <c:if test="${member.mem_id == null}">
	       <h4 style = "color:#1c254f"><a href="/login" style = "color:#1c254f">로그인</a> / <a href="/member/register" style = "color:#1c254f">회원가입</a></h4>
	      </c:if>
        <c:if test="${member.mem_id != null}">
				<li class="dropdown">
	        <h4 style = "color:#1c254f"><a href="#" style = "color:#1c254f" class="dropdown-toggle" data-toggle="dropdown">마이페이지<b class="caret"></b></a></h4>
	        <ul class="dropdown-menu">
	           <li><a href="/member/memberUpdateView">회원정보수정</a></li>
	           <li><a href="/member/memberDeleteView">회원탈퇴</a></li>
	           <li><a id="logoutBtn">로그아웃</a></li>
	        </ul>
	      </li>
        </c:if>
        <c:if test="${member.mem_id == 'admin'}">
         <li>
        <h4 style = "color:#1c254f"><a href="/manager/memberlist" style = "color:#1c254f">관리자</a></h4>
        </li>
        </c:if>
	</div>
	
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="/" class="navbar-brand">
     <img alt="brand" src="/resources/img/logo2.png" style=" position: absolute; width:40px; left: 100px;">
      </a>
    </div>
    <br>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
    <br>
      <ul class="nav navbar-nav">
       <li class="dropdown one">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">구단소개<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/sogae">구단정보</a></li>
	          <li><a href="/player">선수단정보</a></li>
	        </ul>
	      </li>
        <li class="two">
          <a href="/gongji/list">공지사항</a>
        </li>
       <li class="three">
          <a href="/news/list">뉴스</a>
        </li>
        <li class="dropdown four">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">커뮤니티<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/board/list">자유게시판</a></li>
	          <li><a href="/qa/list">Q&A</a></li>
	          <li><a href="/insa/list">가입인사</a></li>
	        </ul>
	      </li>
	       <li class="five">
          <a href="/jaryo/list">자료실</a>
        </li>
        	<li class="dropdown six">
	        <a href="#" class="dropdown-toggle" data-toggle="dropdown">중고장터<b class="caret"></b></a>
	        <ul class="dropdown-menu">
	          <li><a href="/buy/list">삽니다</a></li>
	          <li><a href="/cell/list">팝니다</a></li>
	        </ul>
	      </li>
      </ul>
    </nav>
  </div>
</header>