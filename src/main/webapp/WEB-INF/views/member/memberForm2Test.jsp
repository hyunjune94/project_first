<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>

<!DOCTYPE HTML>
<html lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"	crossorigin="anonymous"> 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">


<title>hyunjune html projects</title>

<style type="text/css">
.form_header { 

}

.form_body_title {
	text-align: center;
}

.form_body {

}
table {
	margin-left: auto;
	margin-right: auto;
}

input, select, textarea {
	border: none;
}

.table-active {
	text-align: center;
}

.btn_area {
	text-align:center;
}


</style>
</head>

<body>


	<div class="form_header">
		<div class="list_header">
			<div class="container">
				<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
					<a href="./memberList.html" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
						<svg class="bi me-2" width="40" height="32"></svg>
						<span class="fs-4">PROJECT CHERRY</span>
					</a>
			
					<ul class="nav nav-pills">
						<li class="nav-item dropdown">
						    <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button" aria-expanded="false">강현준 님</a>
						    <ul class="dropdown-menu">
						      <li><a class="dropdown-item disabled" href="#">hyunjune94@naver.com</a></li>
						      <li><a class="dropdown-item" href="#">내 정보</a></li>
						      <li><a class="dropdown-item" href="#">Something else here</a></li>
						      <li><hr class="dropdown-divider"></li>
						      <li><a class="dropdown-item" href="#">로그아웃</a></li>
						    </ul>
						</li>						
					</ul>
				</header>
			</div>
		</div>
	</div>

	<br>
	<div class="form_body_title">
		<h1>개인 정보</h1>	
	</div>	
	<hr>
	<br>

	<form method="post" id="formList" name="formList" action="/infra/member/memberUpdtTest">
		<div class = "form_body">
			<div class="container">
	  			<input type="hidden" name="ifmmSeq" value="<c:out value="${item.ifmmSeq}"/>">
				<div class="row g-3">
				    <div class="col-12 col-md-6">
				   		<label for="formGroupExampleInput" class="form-label">아이디</label>
	  					<input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="아이디" value="<c:out value="${item.ifmmId}"/>">
				    </div>
				    <div class="col-12 col-md-6">
				    	<label for="formGroupExampleInput" class="form-label">이름</label>
				    	<input type="text" class="form-control" id="ifmmName" name="ifmmName"  placeholder="이름" value="<c:out value="${item.ifmmName}"/>">
				    </div>
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">비밀번호</label>
	  					<input type="password" class="form-control" id="ifmmPassword" name="ifmmPassword"  placeholder="비밀번호" value="<c:out value="${item.ifmmPassword}"/>">
				    </div>
				    <div class="col-12 col-md-6">
				    </div>
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">모바일</label>
	  					<div class="input-group">
							<input type="text" class="form-control" id="ifmmPhoneNumber1" name="ifmmPhoneNumber1" value="<c:out value="${item.ifmmPhoneNumber1}"/>">
							<span class="input-group-text">-</span> 
							<input type="text" class="form-control" id="ifmmPhoneNumber2" name="ifmmPhoneNumber2" value="<c:out value="${item.ifmmPhoneNumber2}"/>">
							<span class="input-group-text">-</span> 
							<input type="text" class="form-control" id="ifmmPhoneNumber3" name="ifmmPhoneNumber3" value="<c:out value="${item.ifmmPhoneNumber3}"/>">
						</div>
				    </div>
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">전화번호</label>
	  					<div class="input-group	">
							<select class="form-select" id="floatingSelectGrid"
								aria-label="Floating label select example">
								<option selected>지역</option>
								<option value="1">02)</option>
								<option value="2" selected>031)</option>
								<option value="3">033)</option>
								<option value="4">051)</option>
								<option value="5">064)</option>
							</select> 
							<input type="text" class="form-control"  id="ifmmNumber1" name="ifmmNumber1" value="<c:out value="${item.ifmmNumber1}"/>">
							<span class="input-group-text">-</span> 
							<input type="text" class="form-control"  id="ifmmNumber2" name="ifmmNumber2" value="<c:out value="${item.ifmmNumber2}"/>">
						</div>
				    </div>
	
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">생일</label>
	  					<input type="date" class="form-control"  id="datepicker" name="ifmmDob" value="<c:out value="${item.ifmmDob}"/>">
				    </div>
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">성별</label>
	  					<div class="form-check">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="gender" value="M" checked> <label class="form-check-label" for="inlineRadio1">남</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio" name="gender" id="gender" value="W"> <label class="form-check-label" for="inlineRadio2">녀</label>
						</div>
						</div>
				    </div>
				    <div class="col-12 col-md-6">
				   		<label for="formGroupExampleInput" class="form-label">우편번호</label>
	  					<input type="text" class="form-control" id="member_post" name="ifmmZipCode" value="<c:out value="${item.ifmmZipCode}"/>" readonly onclick="findAddr()">
				    </div>
				    <div class="col-12 col-md-6">
				    	<label for="formGroupExampleInput" class="form-label">주소</label>
				    	<input type="text" class="form-control" id="member_addr" name="ifmmAddress" value="<c:out value="${item.ifmmAddress}"/>" readonly>
				    </div>
				    <div class="col-12 col-md-12">
						<label for="formGroupExampleInput" class="form-label">상세주소</label>
	  					<input type="text" class="form-control" id="Detailed Address" name="ifmmDetailedAddress" value="<c:out value="${item.ifmmDetailedAddress}"/>">
				    </div>
				    
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">개인정보 수집 동의</label>
	  					<div class="form-check">
	  					<input type="hidden" id="ifmmPushConsentNy" name="ifmmPushConsentNy" value="0">
						<input class="form-check-input" type="checkbox" value="" id="ifmmPushConsent" name="ifmmPushConsent" checked> 
							<label class="form-check-label" for="flexCheckDefault">
							동의합니다
							</label>
						</div>
				    </div>
				    <div class="col-12 col-md-6">
						<label for="formGroupExampleInput" class="form-label">이메일 정보 마케팅 사용동의</label>
	  					<div class="form-check">
							<input class="form-check-input" type="checkbox" value="" id="Email_marketing" checked>
							<label class="form-check-label" for="flexCheckDefault">
							동의합니다
							</label>
						</div>
				    </div>
				</div>
			</div>	
		<br>
		<hr>
		</div>
	
		
		<br>
		<div class="btn_area">
			<button type="submit" class="btn btn-outline-primary">수정</button>		
			<button type="button" class="btn btn-outline-danger" onclick="location.href='memberViewTest?ifmmSeq=<c:out value="${item.ifmmSeq}"/>';">취소</button>
		</div>
	<br><br><br>
	</form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
function findAddr(){
	new daum.Postcode({
        oncomplete: function(data) {
        	
        	console.log(data);
        	
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var jibunAddr = data.jibunAddress; // 지번 주소 변수
            document.getElementById('member_post').value = data.zonecode;
            if(roadAddr !== ''){
                document.getElementById("member_addr").value = roadAddr;
            } 
            else if(jibunAddr !== ''){
                document.getElementById("member_addr").value = jibunAddr;
            }
        }
    }).open();
}
</script>
<script type="text/javascript">	
	$(document).ready(function(){
		 $("#datepicker").datepicker();
	}); 

	$.datepicker.setDefaults({
	    dateFormat: 'yy-mm-dd',
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	    showMonthAfterYear: true,
	    yearSuffix: '년'
	});
</script>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

</html>

