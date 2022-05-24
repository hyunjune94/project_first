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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"	rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>강현준</title>

<style type="text/css">

.btn_area {
	text-align: center;
	width: 100%;
}

</style> 

</head>
<body>
	<form id="" name="" method="post">
		
			<div class="my_aside" style="margin-top:50px;">
				<div class="container">
					<div class="row" style="float: none; margin: 100 auto;">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<label for="basic-url" class="form-label">아이디</label>
							<div class="input-group mb-3">
								<input type="text" class="form-control" id="ifmmId" name="ifmmId" placeholder="Username" aria-label="Username" aria-describedby="basic-addon1">
							</div>
						</div>
					</div>
					<div class="row" style="float: none; margin: 100 auto;">
						<div class="col-md-8" style="float: none; margin: 0 auto;">
							<label for="basic-url" class="form-label">비밀번호</label>
							<div class="input-group mb-3">
								<input type="password" class="form-control"	id="ifmmPassword" name="ifmmPassword" placeholder="Password" aria-label="Password" aria-describedby="basic-addon1">
							</div>
						</div>
					</div>
				</div>
			<div class="btn_area">
				<button class="btn btn-secondary" type="button" id="btnLogin" name="">Login</button>
			</div>
		</div>		
	</form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="/infra/resources/js/validation.js"></script>
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
<script type="text/javascript">

	$("#btnLogin").on("click", function(){
		
		if(!checkNull($("#ifmmId"),  $("#ifmmId").val(), "아이디를 입력하세요")) return false;
		if(!checkNull($("#ifmmPassword"),  $("#ifmmPassword").val(), "비밀번호를 입력하세요")) return false; 

	});
</script>
</html>
