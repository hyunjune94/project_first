<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<!DOCTYPE HTML>
<html lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">
<meta name="google-signin-client_id" content="217755353555-3msma49ckq4fa47k0tg5tkshatcdh8c9.apps.googleusercontent.com">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>강현준</title>

<style type="text/css">
.my_header { 
	/* background-color: red; */
	width: 100%;
	height: 120px;
	margin: 0 auto;
}

.my_section {
	width: 100%;
	height: 600px;
	margin: 0 auto;
}

.my_aside {
	width: 100%;
	float: left;
	margin: 0 auto;
}

.my_content {
	width: 100%;
	float: left;
	margin: 0 auto;
}

.my_footer {
	background-color: #F2F2F2;
	width: 100%;
	height: 100px;
	margin: 0 auto;
	text-align: center;
	color: #848484;
}

.btn_area {
	text-align: center;
	width: 100%;
}

.log_sub {
	margin: 0 auto;
}

.log_sub_left {
	background-color: red;
	float: left;
	text-align: left;
}

.log_sub_right {
	background-color: blue;
	float: right;
	text-align: right;
}

.logo {
	margin: 0 auto;
	text-align: center;
	padding-bottom: 20px;
}

.my_account {
	width: 55%;
	margin: 0 auto;
}
</style>

</head>
<body>
	<form id="" name="" method="post">
		<div class="my_header">
			<div class="list_header">
				<div class="container fixed-top bg-white">
					<header
						class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
						<a href="/"
							class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
							<svg class="bi me-2" width="40" height="32">
								<use xlink:href="#bootstrap" /></svg> <span class="fs-4">PROJECT
								CHERRY</span>
						</a>

<!-- 						<ul class="nav nav-pills">
							<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
							<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
							<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
							<li class="nav-item"><a href="#" class="nav-link">메뉴4</a></li>
						</ul> -->
					</header>
				</div>
			</div>
		</div>
		<div class="logo">
			<img src="${pageContext.request.contextPath}/resources/images/logo.png">
		</div>
		<br>
		<br>
		<div class="my_section">
			<div class="container">
				<div class="row" style="float: none; margin: 100 auto;">
					<div class="col-md-8" style="float: none; margin: 0 auto;">
						<h6>내 계정으로 로그인</h6>
					</div>
				</div>
			</div>
			<div class="my_aside">
				<div class="container">
					<div class="row" style="float: none; margin: 100 auto;">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
							</div>
						</div>
					</div>
					<div class="row" style="float: none; margin: 100 auto;">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<div class="input-group mb-3">
								<input type="password" class="form-control"
									id="ifmmPassword" name="ifmmPassword" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
							</div>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<div class="btn_area">
				<button class="btn btn-secondary" type="button" id="btnLogin" name="">Login</button>
			</div>
			<br>
			<div class="log_sub">
				<div class="container">
					<div class="row" style="float: none; margin: 100 auto;">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<div style="float: left;">
								<div class="form-check">
									<input class="form-check-input" type="checkbox" value="" id="flexCheckChecked"> <label class="form-check-label" for="flexCheckChecked"> 로그인 상태 유지 </label>
								</div>
							</div>
							<h6 style="float: right;">
								<img src="../../../images/key.png"><a href="" style="text-decoration: none">아이디 / 비밀번호 찾기</a>
							</h6>
						</div>
					</div>
				</div>
			</div>
			<br>
			<br>
			<br>
			<br>
			<div class="my_content">
				<div class="container">
					<div class="row" style="float: none; margin: 100 auto;">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<button class="btn btn-warning" type="button" style="width: 100%;">
								<img src="${pageContext.request.contextPath}/resources/images/kakao.png"> 카카오 계정으로 로그인
							</button>
						</div>
						<br>
						<br>
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<button class="btn btn-success" type="button" style="width: 100%;">
								<img src="${pageContext.request.contextPath}/resources/images/naver.png"> 네이버 계정으로 로그인
							</button>
						</div>
						<br>
						<br>
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<button class="btn btn-primary" type="button" style="width: 100%;" id="GgCustomLogin" onclick="javascript:void(0)">
								<img src="${pageContext.request.contextPath}/resources/images/google.png"> 구글 계정으로 로그인
							</button>
						</div>
					</div>
				</div>
			</div>


		</div>
		<div class="my_footer">
			<br>
			<h6>@copywrite 강현준</h6>
			<h6>☎ 010-7335-2901</h6>

		</div>
	</form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	$("#btnLogin").on("click", function() {
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/infra/member/loginProc"
			,data : { "ifmmId" : $("#ifmmId").val(), "ifmmPassword" : $("#ifmmPassword").val()}
			,success: function(response) {
				if(response.rt == "success") {
					location.href = "/infra/member/indexView";
				} else {
					
					alert("회원없음");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
	});
</script>

<!-- 구글연동 -->
<script>

//처음 실행하는 함수
function init() {
	gapi.load('auth2', function() {
		gapi.auth2.init();
		options = new gapi.auth2.SigninOptionsBuilder();
		options.setPrompt('select_account');
        // 추가는 Oauth 승인 권한 추가 후 띄어쓰기 기준으로 추가
		options.setScope('email profile openid https://www.googleapis.com/auth/user.birthday.read');
        // 인스턴스의 함수 호출 - element에 로그인 기능 추가
        // GgCustomLogin은 li태그안에 있는 ID, 위에 설정한 options와 아래 성공,실패시 실행하는 함수들
		gapi.auth2.getAuthInstance().attachClickHandler('GgCustomLogin', options, onSignIn, onSignInFailure);
	})
}

function onSignIn(googleUser) {
	var access_token = googleUser.getAuthResponse().access_token
	$.ajax({
    	// people api를 이용하여 프로필 및 생년월일에 대한 선택동의후 가져온다.
		/* url: 'https://people.googleapis.com/v1/people/me' */
        // key에 자신의 API 키를 넣습니다.
        	/* url : "/infra/member/GloginProc" */
		 data: {personFields:'birthdays', key:'AIzaSyDqXcMW_hrSCYZYKi1V4k8oTquByna3Y8o', 'access_token': access_token}
		, method:'GET'
	})
	.done(function(e){
        //프로필을 가져온다.
     
		 var profile = googleUser.getBasicProfile();
		/* console.log(profile); */
		var id= profile.getId();
		var username = profile.getName();
		
		console.log(username);
		$.ajax({
			async: true 
			,cache: false
			,type: "post"
			,url: "/member/GLoginProc"
			,data : {"ifmmName" : profile.getName()}
			,success: function(response) {
				if(response.rt == "success") {
					/* location.href = "/infra/index/indexView"; */
					location.href = "/member/indexView";
				} else {
					alert("구글 로그인 실패");
				}
			}
			,error : function(jqXHR, textStatus, errorThrown){
				alert("ajaxUpdate " + jqXHR.textStatus + " : " + jqXHR.errorThrown);
			}
		})
		
	})
	.fail(function(e){
		console.log(e);
	})
	
}

function onSignInFailure(t){	
	
	console.log(t);
	
}
</script>
<!-- //구글 api 사용을 위한 스크립트 -->
<script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
</html>
