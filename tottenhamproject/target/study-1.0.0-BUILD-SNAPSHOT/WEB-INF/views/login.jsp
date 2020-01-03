<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<title>TottenHam Hotspur Korea Fanpage</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png" href="resources/images/icons/brand.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="resources/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css" href="resources/css/util.css">
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
<!--===============================================================================================-->

<!--===============================================================================================-->
<script src="resources/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="resources/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
<script src="resources/vendor/bootstrap/js/popper.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="resources/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="resources/vendor/daterangepicker/moment.min.js"></script>
<script src="resources/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
<script src="resources/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
<script src="resources/js/main.js"></script>
<script src="resources/js/Backstretch.js"></script>
<script src="resources/js/jquery-3.3.1.js"></script>


</head>
<body>

	<div class="limiter">
		<div class="container-login100" style="background-image: url('resources/img/background/로그인배경.jpg');background-repeat:no-repeat;background-position: center;background-size: cover;">
			<div class="wrap-login100">
				<form class="login100-form validate-form" name='homeForm'
					method="post" action="/member/login">
					<c:if test="${member == null}">
						<span class="login100-form-title p-b-26"> TottenHam
							Hotspurs </span>
						<span class="login100-form-title p-b-48"> <img
							src="/resources/img/emb.jpg">
						</span>

						<div class="wrap-input100 validate-input">
							<input class="input100" type="text" id="mem_id" name="mem_id">
							<span class="focus-input100" data-placeholder="ID"></span>
						</div>

						<div class="wrap-input100 validate-input">
							<span class="btn-show-pass"> <i class="zmdi zmdi-eye"></i>
							</span> <input class="input100" type="password" id="mem_pw"
								name="mem_pw"> <span class="focus-input100"
								data-placeholder="Password"></span>
						</div>
						<c:if test="${msg == false}">
						<c:if test="${member == null}">
							<p style="text-align: center; color: red">아이디와 비밀번호 확인해주세요:D</p>						
						</c:if>
						</c:if>

						<div class="container-login100-form-btn">
							<div class="wrap-login100-form-btn">
								<div class="login100-form-bgbtn"></div>
								<button class="login100-form-btn" type="submit">Login</button>
							</div>
						</div>

						<div class="text-center p-t-115">
							<span class="txt1"> Don’t have an account? </span> <a
								class="txt2" href="member/register"> Sign Up </a>
						</div>
					</c:if>
					<c:if test="${member != null }">
						<%
							response.sendRedirect("/mainpage");
						%>
					</c:if>
				</form>
			</div>
		</div>
	</div>


	<div id="dropDownSelect1"></div>


</body>
</html>