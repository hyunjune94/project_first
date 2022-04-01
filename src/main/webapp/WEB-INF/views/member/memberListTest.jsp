<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags"%>
<fmt:formatDate value="${item.regDateTime }" pattern="yyyy-MM-dd HH:mm:ss"/>
<!DOCTYPE HTML>
<html lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"	crossorigin="anonymous">



<title>강현준</title>

<style type="text/css">
.list_header {
	width: 100%;
	height: 120px;
}

.list_section {
	width: 100%;
	height: 600px;
}

.list_aside {
	width: 100%;
	height: 25%;
}

.list_content {
	text-align: center;
	width: 100%;
	height: 60%;
}

.list_content>table {
	margin: 0 auto;
	text-align:center;
}

.list_footer {
	background-color: #F2F2F2;
	width: 100%;
	height: 100px;
	margin: 0 auto;
	text-align: center;
	color: #848484;
}

.list_section>div>select {
	display: inline-block;
	margin-left: 10px;
}

.col-6 {
	/* 	border: 1px solid yellow; */
	margin-top: 10px;
}

.btn_section {
	text-align:center;
}
</style>

</head>
<body>
	<div class="list_header">
		<div class="container">
			<header	class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
				<a href="/"	class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
					<svg class="bi me-2" width="40" height="32">
						<use xlink:href="#bootstrap" /></svg> <span class="fs-4">PROJECT CHERRY</span>
				</a>

				<ul class="nav nav-pills">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						href="#" role="button" aria-expanded="false">강현준 님</a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item disabled" href="#">hyunjune94@naver.com</a></li>
							<li><a class="dropdown-item" href="#">내 정보</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
							<li><hr class="dropdown-divider"></li>
							<li><a class="dropdown-item" href="#">로그아웃</a></li>
						</ul>
					</li>
				</ul>
			</header>
		</div>
	</div>

	<div style="text-align: center;">
		<h3 style="margin-top: 10px;">회원관리</h3>
	</div>	
	<div class="list_section">
	
	<form id="formList" name="formList" method="post" action="/infra/member/memberListTest">
		<input type="hidden" id="thisPage" name="thisPage" value="<c:out value="${vo.thisPage }" default="1"/>">
		<input type="hidden" name="rowNumToshow" value="<c:out value="${vo.rowNumToShow }"/>">
		<input type="hidden" id="ifmmSeq" name="ifmmSeq">
		<div class="list_aside">
			<div class="container">
				<div class="row">
					<div class="col-6 col-md-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>가입 일자</option>
							<option value="1">1년 이내</option>
							<option value="2">1년~2년</option>
							<option value="3">2년~3년</option>
							<option value="3">3년 이상</option>
						</select>
					</div>
					<div class="col-6 col-md-3">
						<select class="form-select" aria-label="Default select example">
							<option selected>연령</option>
							<option value="1">8세 이하</option>
							<option value="2">청소년</option>
							<option value="3">성인</option>
						</select>
					</div>
					<div class="col-6 col-md-3">
						<select class="form-select" name="shIfmmGenderCd" id="shIfmmGenderCd">
							<option value="">성별</option>
							<option value="3" <c:if test="${vo.shIfmmGenderCd eq 3 }">selected</c:if>>남
							<option value="4" <c:if test="${vo.shIfmmGenderCd eq 4 }">selected</c:if>>여
						</select>
					</div>
					<div class="col-6 col-md-3">
						<select class="form-select" name="shIfmmDelNy" id="shIfmmDelNy">
							<option value="">삭제여부</option>
							<option value="1" <c:if test="${vo.shIfmmDelNy eq 1 }">selected</c:if>>Y
							<option value="0" <c:if test="${vo.shIfmmDelNy eq 0 }">selected</c:if>>N
						</select>
					</div>
					
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-6 col-md-3">
						<input type="text" class="form-control" name="shIfmmId" id="shIfmmId" value="<c:out value="${vo.shIfmmId }"/>" placeholder="아이디">
					</div>
					<div class="col-6 col-md-3">
						<input type="text" class="form-control" name="shIfmmName" id="shIfmmName" value="<c:out value="${vo.shIfmmName }"/>" placeholder="사용자 이름">
					</div>
					<div class="col-6 col-md-3">
						<button type="submit" class="btn btn-outline-warning">
							<img src="${pageContext.request.contextPath}/resources/images/glass.png">
						</button>
						<button type="button" class="btn btn-outline-primary" onclick="location.href='memberListTest';">
							<img src="${pageContext.request.contextPath}/resources/images/refresh.png">
						</button>
					</div>
				</div>
			</div>
		</div>
		</form>
		<br><br>
		
		<form id="" name="" method="post">
		<div class="list_content">
			<table class="table table-striped table-hover" style="width: 90%;">
				<thead>
					<tr>
						<th style="width:30px;"><input class="form-check-input" type="checkbox" value="" id="checkboxAll" style="float: none;"></th>
						<th style="width:60px;">no</th>
						<th style="width:200px;">아이디</th>
						<th style="width:150px; min-width: 110px;">사용자 이름</th>
						<th style="width:200px; min-width: 130px;">전화번호</th>
						<th style="width:200px;">등록일</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td class="text-center" colspan="9">There is no data!</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="item" varStatus="status">
								<tr>
									<th style="width: 45px;">
									<div class="form-check">
										<input class="form-check-input" type="checkbox" value="" id="checkboxSeq" style="float: none;">
									</div></th>
									<th><c:out value="${item.ifmmSeq}" /></th>
									<td><a href="javascript:goForm(<c:out value="${item.ifmmSeq}"/>)"><c:out value="${item.ifmmId}" /></a></td>
									<td><c:out value="${item.ifmmName}" /></td>
									<td><c:out value="${item.ifmmPhoneNumber1}" />-<c:out value="${item.ifmmPhoneNumber2}" />-<c:out value="${item.ifmmPhoneNumber3}" /></td>
									<td><c:out value="${item.regDateTime}" /></td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
			<div class="container">
				<div class="row">
					<div class="col-6 col-md-3"></div>
					<div class="col-6 col-md-3"></div>
					<div class="col-6 col-md-3"></div>
					<div class="col-6 col-md-3">
						<button type="button" class="btn btn-outline-primary" onclick="location.href='memberFormTest';">
							<img src="${pageContext.request.contextPath}/resources/images/plus.png">
						</button>
						<button type="button" class="btn btn-outline-danger">
							<img src="${pageContext.request.contextPath}/resources/images/trash.png">
						</button>						
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<nav aria-label="...">
						<ul class="pagination" style="justify-content: center;">
						    <c:if test="${vo.startPage gt vo.pageNumToShow}">
								<li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.startPage - 1}'/>);">Previous</a></li>
							</c:if>
							<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
								<c:choose>
									<c:when test="${i.index eq vo.thisPage}">
							        <li class="page-item active"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
									</c:when>
									<c:otherwise>             
							        <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${i.index}'/>);">${i.index}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>     
							<c:if test="${vo.endPage ne vo.totalPages}">                
							        <li class="page-item"><a class="page-link" href="javascript:goList(<c:out value='${vo.endPage + 1}'/>);">Next</a></li>
							</c:if>   
						</ul>
					</nav>
				</div>
			</div>
		</div>
		</form>
	</div>
	<br>
	<br>


</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>

<script type="text/javascript">
goList = function(seq) {
	$("#thisPage").val(seq);
	$("#formList").submit();
};

goForm = function(seq) {
	$("#ifmmSeq").val(seq);
	$("#formList").attr("action","/infra/member/memberViewTest");
	$("#formList").submit();
};

$("btnModalDelete").on("click", function() {
	$("input[name-checkboxSeq]:checked").each(function() {
		checkboxArray.push($(this).value());
	})
	
	$("input:hidden[name=checkboxSeqArray]").val(checkboxSeqArray);
	
	$("#modalConfirm").modal("hide");
	
	form.attr("action", goUrlMultiDele).submit();
});

$("#checkboxAll").click(function() {
	if($("#checkboxAll").is(":checked")) $("input[name=checkboxSeq]").prop("checked", true);
	else $("input[name=checkboxSeq]").prop("checked", false);
});


</script>
<script	src="../../../bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</html>