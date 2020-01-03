<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name = "viewport" content = "width=device-width, initial-scale=1"> 
<title>회원가입</title>
<script src = "http://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
		<!-- 부가적인 테마 -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
		
		<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- daum 도로명 주소 찾기 api -->
<script src = "http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<style type = "text/css">
td {
border:1px solid #000000;
border-collapse:collapse;
}
</style>

<script type ="text/javascript">



//모든 공백 체크 정규식 
var empj = /\s/g;

// 아이디 정규식 

var idj = /^[a-z0-9][a-z0-9_\-]{4,19}$/; 

// 비밀번호 정규식 

var pwj = /^[A-Za-z0-9]{4,12}$/;

// 이름 정규식

var namej = /^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/;

// 이메일 검사 정규식 

// var mailj = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA]([-_.]?[0-9a-zA])*.[a-zA-Z]{2,3}$/i;
var mailj = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;


// 휴대폰 번호 정규식 

var phonej = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/; 

/^[가-힣]{2,4}|[a-zA-Z]{2,10}\s[a-zA-Z]{2,10}$/


var birthj = false;

var address = $('#mem_detailaddress');

$(document).ready(function() {
var address = $('#mem_detailaddress');

// 아이디 중복확인
$("#mem_id").blur(function() {
if($('#mem_id').val()==''){
$('#id_check').text('아이디를 입력하세요.');
$('#id_check').css('color','red');

}else if(idj.test($('#mem_id').val())!=true){
$('#id_check').text('4~12자의 영문, 숫자만 사용 가능합니다.');
$('#id_check').css('color','red');

}else if($('#mem_id').val()!=''){ 

var mem_id=$("#mem_id").val();
$.ajax({
async : true, 
type : "POST",
data : {"mem_id" : $("#mem_id").val()}, // mem_id 라는 이름으로 mem_id라는 데이터를 @webservlet("/idsearch.do")에 보내겠다.
url : "/member/idChk",
dataType:"json", 
contentType: "application/json; charset=UTF-8",
success : function(data) {


if(data == 1){
$('#id_check').text('중복된 아이디 입니다.');
$('#id_check').css('color','red');
$("#idCheck").attr("disabled", true);
}else if(idj.test(mem_id)){
$('#id_check').text('사용가능한 아이디 입니다.');
$('#id_check').css('color','blue');
$("#idCheck").attr("disabled",false);

}else if(mem_id =='') {
$('#id_check').text('아이디를 입력해 주세요');
$('#id_check').css('color','red');
$("#idCheck").attr("disabled",true);

}else{
$('#id_check').text('아이디는 소문자와 숫자 4~12자리만 가능합니다.');
$('#id_check').css('color','red');
$("#idCheck").attr("disabled",true);

}
}

});//ajax
} // else if 

}); //blur 

$('form').on('submit',function(){
var inval_Arr = new Array(8).fill(false);
if(idj.test($('#mem_id').val())) {
inval_Arr[0] = true;

}else{
inval_Arr[0] = false;
alert('아이디를 확인하세요.');
return false;
}


// 비밀번호가 같은 경우 && 비밀번호 정규식

if(($('#mem_pw').val() == ($('#mem_pw2').val())) 
&& pwj.test($('#mem_pw').val())) {
inval_Arr[1] = true; 

}else{
inval_Arr[1] = false;
alert('비밀번호를 확인하세요.');
return false;
}

// 이름 정규식 

if(namej.test($('#mem_name').val())) {
inval_Arr[2] = true;

}else{
inval_Arr[2] = false;
alert('이름을 확인하세요.');
return false;
}

// 생년월일 정규식 

if(birthj) {
console.log(birthj);
inval_Arr[3] = true;

}else{
inval_Arr[3] = false;
alert('생년월일을 확인하세요.');
return false;
}

// 이메일 정규식

if(mailj.test($('#mem_email').val())){
console.log(mailj.test($('#mem_email').val()));
inval_Arr[4] = true;

}else{
inval_Arr[4] = false;
alert('이메일을 확인하세요.');
return false;
}

// 휴대폰 번호 정규식 
if(phonej.test($('#mem_phone').val())) {
console.log(phonej.test($('#mem_phone').val()));
inval_Arr[5] = true;

}else{
inval_Arr[5] = false;
alert('휴대폰 번호를 확인하세요.');
return false;
}

//성별 확인
if(member.mem_gender[0].checked==false&&member.mem_gender[1].checked==false) {
inval_Arr[6] = false;
alert('성별을 확인하세요.');
return false;

}else{
inval_Arr[6] = true;
}

// 주소확인
if(address.val() == ''){
inval_Arr[7] = false;
alert('주소를 확인하세요.');
return false;

}else{

inval_Arr[7] = true;

}

// 전체 유효성 검사 

var validAll = true;
for(var i = 0; i < inval_Arr.length; i++) {
if(inval_Arr[i] == false) {
validAll = false;
}
}
if(validAll == true) {
alert('회원가입이 완료 되셨습니다.');
}else{
alert('정보를 다시 확인 해주세요.') 
}
});


$('#mem_id').blur(function() { 
if(idj.test($('#mem_id').val())) {
console.log('true');
$('#id_check').text('');

}else{
console.log('false');
$('#id_check').text('5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.');
$('#id_check').css('color','red');
}
});
$('#mem_pw').blur(function() {
if(pwj.test($('#mem.pw').val())) {
console.log('true');
$('#pw_check').text('');

}else{
console.log('false');
$('#pw_check').text('4~12자의 숫자, 문자로만 사용 가능합니다.');
$('#pw_check').css('color','red');
}
});


//1~2 패스워드 일치확인
$('#mem_pw2').blur(function() {
if($('#mem_pw').val() != $(this).val()) {
$('#pw2_check').text('비밀번호가 일치하지 않습니다.');
$('#pw2_check').css('color','red');
}else{
$('#pw2_check').text('');
}
});

// 이름에 특수문자 들어가지 않도록 설정

$("#mem_name").blur(function() {
if(namej.test($(this).val())){
console.log(namej.test($(this).val()));
$("#name_check").text('');

}else{
$('#name_check').text('한글 2~4자 이내로 입력하세요. (특수기호, 공백 사용 불가)');
$('#name_check').css('color','red');
}
});

// 이메일 체크

$("#mem_email").blur(function() {
	if(mailj.test($(this).val())){
	console.log(mailj.test($(this).val()));
	$("#email_check").text('');

	}else{
	$('#email_check').text('이메일 양식을 확인해주세요.');
	$('#email_check').css('color','red');
	}
	});


// 생일 유효성 검사 

var birthj = false;

// 생년월일 birthj 유효성 검사 
$('#mem_birth').blur(function(){
var dateStr = $(this).val();
var year = Number(dateStr.substr(0,4)); // 입력한 값의 0 ~ 4 자리까지 
var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 부터 2자리 숫자 
var day = Number(dateStr.substr(6,2)); // 입력한 갓의 6번째 부터 2자리 숫자 
 
var today = new Date(); // 날짜변수 선언
var yearNow = today.getFullYear(); // 올해 연도 가져옴 

if (dateStr.length <=8) {
// 연도의 경우 1900 보다 작거나 yearNow 보다 크면 false를 반환

if(year > yearNow || year < 1900) {

$('#birth_check').text('생년월일을 확인해주세요.');
$('#birth_check').css('color','red');

}else if(month <1 || month > 12) {

$('#birth_check').text('생년월일을 확인해주세요.');
$('#birth_check').css('color','red');

}else if(day <1 || day > 31) {
$('#birth_check').text('생년월일을 확인해주세요.');
$('#birth_check').css('color','red');

}else if ((month ==4 || month == 6 || month == 9 || month == 11) && day == 31) {
$('#birth_check').text('생년월일을 확인해주세요.');
$('#birth_check').css('color','red');

}else if(month == 2) {
var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0 )); 
if(day>29 || (day==29 && !isleap)) {
$('#birth_check').text('생년월일을 확인해주세요.');
$('#birth_check').css('color','red');

}else{
$('#birth_check').text('');
birthj = true;
}

}else{ 
$('#birth_check').text('');
birthj = true;
}
}else{

$('#birth_check').text('생년월일을 확인해주세요');
$('#birth_check').css('color','red');
}
});

// 휴대전화 
$('#mem_phone').blur(function() {
if(phonej.test($(this).val())) {
console.log(phonej.test($(this).val()));
$("#phone_check").text('');


}else{
$('#phone_check').text('휴대폰번호를 확인해주세요.');
$('#phone_check').css('color','red');

}
});
});

// 우편번호 찾기 버튼 클릭시 발생 이벤트 

function execPostCode() {
new daum.Postcode({
oncomplete: function(data) {

var fullRoadAddr = data.roadAddress; // 도로명주소 변수 
var extraRoadAddr = ''; // 도로명 조합형 주소 변수 

if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
extraRoadAddr += data.bname;
}

// 건물명 이 있고 공동주택일 경우추가 

if(data.buildingName !== '' && data.apartment === 'Y') {
extraRoadAddr += (extraRoadAddr !== '' ? ',' + data.buildingName : 
data.buildingName);
}

// 도로명 , 지번 조합형 주소가 있을 경우 , 괄호까지 추가한 최종 문자열을 만든다
if(extraRoadAddr !== '') {
extraRoadAddr = ' (' + extraRoadAddr + ')';
}

// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다 

if(fullRoadAddr !== '') {
fullRoadAddr += extraRoadAddr;
}

// 우편번호와 주소 정보를 해당 필드에 넣는다 
console.log(data.zonecode);
console.log(fullRoadAddr);

$("[name=mem_oaddress]").val(data.zonecode);
$("[name=mem_address]").val(fullRoadAddr);

document.getElementById('mem_oaddress').value = data.zonecode;

document.getElementById('mem_address').value = fullRoadAddr;

}

}).open();

}

//업데이트 버튼 이벤트
$(document).ready(function() {
	var idChkVal = $("#idChk").val();
	if(idChkVal == "N"){
	}else if(idChkVal == "Y"){
		$("#regForm").submit();
	}
});

function fn_idChk(){
	$.ajax({
		url : "/member/idChk",
		type : "post",
		dataType : "json",
		data : {"mem_id" : $("#mem_id").val()},
		success : function(data){
			if(data == 1){
				alert("중복된 아이디입니다.");
			}else if(data == 0){
				$("#idChk").attr("value", "Y");
				alert("사용가능한 아이디입니다.");
			}
		}
	})
}

</script>
</head>
<body>

<article class = "container">
<div class = "page-header">
<div class = "col-md-6 col-md-offset-3">
<h3>회원가입</h3>
</div>


</div>
<div class="col-sm col-md-offset-3">
<form action="" method="post" role ="form" id="usercheck" name="member">
<br><br>
<div class="form-group">
<label for = "id">아이디</label>
<input type="text" class="form-control" id = "mem_id" name= "mem_id" 
placeholder="ID"> 
<button class="idChk" type="button" id="idChk" onclick="fn_idChk();" value="N">중복확인</button>
<div class = "check_font" id = "id_check"></div>
</div>

<div class = "form-group">
<lavel for="pw">비밀번호</lable>
<input type="password" class="form-control" id="mem_pw" name = "mem_pw" 
placeholder="PASSWORD">
<div class="check_font" id="pw_check"></div>
</div>

<div class = "form-group">
<lavel for="pw2">비밀번호 확인</lable>
<input type="password" class="form-control" id="mem_pw2" name = "mem_pw2" 
placeholder="Confirm Password">
<div class="check_font" id="pw2_check"></div>
</div>


<div class = "form-group">
<lavel for="mem_name">이름</lable>
<input type="text" class="form-control" id="mem_name" name = "mem_name" 
placeholder="Name">
<div class="check_font" id="name_check"></div>
</div>

<div class = "form-group">
<lavel for="mem_birth">생년월일</lable>
<input type="tel" class="form-control" id="mem_birth" name = "mem_birth" 
placeholder="ex)19940705">
<div class="check_font" id="birth_check"></div>
</div>


<div class = "form-group">
<lavel for="mem_email">이메일 주소</lable>
<input type="email" class="form-control" id="mem_email" name = "mem_email" 
placeholder="E-mail">
<div class="check_font" id="email_check"></div>
</div>

<div class = "form-group">
<lavel for="mem_phone">휴대폰 번호('-'없이 번호만 입력해주세요)</lable>
<input type="tel" class="form-control" id="mem_phone" name = "mem_phone" 
placeholder="Phonenum">
<div class="check_font" id="phone_check"></div>
</div>

<div class = "form-group">
<lavel for="mem_gender">성별</lable>
<!--<input type="checkbox" id="mem_gender" name = "mem_gender"  value="남">
<input type="checkbox" id="mem_gender" name = "mem_gender"  value="여"> --> 
<input  type="radio" id = "mem_gender" name="mem_gender" value="남" >남
 <input type="radio" id = "mem_gender" name="mem_gender" value="여" >여
</div>

<div class="form-group">
<input class="form-control" style="width: 40%; display: inline;" placeholder="우편번호" 
name = "mem_oaddress" id = "mem_oaddress" type="text" readonly = "readonly">

<button type = "button" class= "btn btn-default" onclick="execPostCode(); "><i class= "fa
fa-search"></i>우편번호 찾기</button>
</div>

<div class="form-group">
<input class="form-control" style="top: 5px;" placeholder="도로명 주소" 
name="mem_address" id="mem_address" type ="text" readonly="readonly"/>
</div>


<div class = "form-group">
<input class="form-control" placeholder="상세주소" name="mem_detailaddress" 
id="mem_detailaddress" type="text" />
</div>

<div class="form-group text-center">
<button id="submit" type="submit" class = "btn btn-primary" >회원가입</button>
<a href="javascript:history.back()" class="cencle btn btn-danger">취소</a>
</div>
</form>
</div>
</article>
</body>
</html>







































































































































































































































