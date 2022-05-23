<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">


</head>
<body>
<div class="container-sm">
	<div class="row">
		<div class="col-12 col-sm-12 col-lg-2">
			<c:out value="${item.ifmmSeq }"/>
 		</div>
		<div class="col-12 col-sm-12 col-lg-2">
			<c:out value="${item.ifmmName }"/>
		</div>
	</div>
</div>

</body>

</html>