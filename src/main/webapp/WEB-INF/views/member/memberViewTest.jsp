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

<title>강현준</title>


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
						<li class="nav-item"><a href="#" class="nav-link">메뉴1</a></li>
						<li class="nav-item"><a href="#" class="nav-link">메뉴2</a></li>
						<li class="nav-item"><a href="#" class="nav-link">메뉴3</a></li>
						<li class="nav-item"><a href="#" class="nav-link">메뉴4</a></li>
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
	<div class = "form_body">
		<div class="container">
			<div class="row g-3">
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">아이디</label>
					<h5><c:out value="${item.ifmmId}" /></h5>
			    </div>
			    <div class="col-12 col-md-6">
			    	<label for="formGroupExampleInput" class="form-label">이름</label>
  					<h5><c:out value="${item.ifmmName}" /></h5>
			    </div>
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">비밀번호</label>
  					<h5><c:out value="${item.ifmmPassword}" /></h5>
			    </div>
			    <div class="col-12 col-md-6">

			    </div>
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">모바일</label>
  					<div class="input-group">
						<input type="text" class="form-control" aria-label="mn1" value="<c:out value="${item.ifmmPhoneNumber1}" />" readonly>
						<span class="input-group-text">-</span> 
						<input type="text" class="form-control" aria-label="mn2" value="<c:out value="${item.ifmmPhoneNumber2}" />" readonly>
						<span class="input-group-text">-</span> 
						<input type="text" class="form-control" aria-label="mn3" value="<c:out value="${item.ifmmPhoneNumber3}" />" readonly>
						
					</div>
			    </div>
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">전화번호</label>
  					<div class="input-group	">
						<select class="form-select" id="floatingSelectGrid" aria-label="Floating label select example" disabled>
							<option selected>지역</option>
							<option value="1">02)</option>
							<option value="2" selected>031)</option>
							<option value="3">033)</option>
							<option value="4">051)</option>
							<option value="5">064)</option>
						</select> <input type="text" class="form-control" aria-label="mn1" value="<c:out value="${item.ifmmNumber1}" />" readonly>
						<span class="input-group-text">-</span> 
						<input type="text" class="form-control" aria-label="mn2" value="<c:out value="${item.ifmmNumber2}" />" readonly>
					</div>
			    </div>

			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">생일</label>
  					<input type="date" class="form-control" id="name" value="<c:out value="${item.ifmmDob}" />" readonly>
			    </div>
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">성별</label>
  					<div class="form-check">
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender" value="M" checked disabled> <label class="form-check-label" for="inlineRadio1">남</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender" id="gender" value="W" disabled> <label class="form-check-label" for="inlineRadio2">녀</label>
					</div>
					</div>
			    </div>
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">우편번호</label>
					<h5><c:out value="${item.ifmmZipCode}" /></h5>
			    </div>
			    <div class="col-12 col-md-6">
			    	<label for="formGroupExampleInput" class="form-label">주소</label>
  					<h5><c:out value="${item.ifmmAddress}" /></h5>
			    </div>
			    <div class="col-12 col-md-12">
					<label for="formGroupExampleInput" class="form-label">상세주소</label>
  					<h5><c:out value="${item.ifmmDetailedAddress}" /></h5>
			    </div>
			    
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">개인정보 수집 동의</label>
  					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="private_info" checked disabled>
						<label class="form-check-label" for="flexCheckDefault">
						동의합니다
						</label>
					</div>
			    </div>
			    <div class="col-12 col-md-6">
					<label for="formGroupExampleInput" class="form-label">이메일 정보 마케팅 사용동의</label>
  					<div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="Email_marketing" checked disabled>
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
		<button type="button" class="btn btn-outline-secondary" onclick="location.href='memberListTest';">목록</button>
		<button type="button" class="btn btn-outline-primary" onclick="location.href='memberForm2Test?ifmmSeq=<c:out value="${item.ifmmSeq}"/>';">수정</button>
	</div>
	
	<br><br><br>
	
</body>

</html>