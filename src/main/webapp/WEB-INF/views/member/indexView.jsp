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

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<title>강현준</title>

</head>
<body>
	<div>
		<h3>sessSeq : <c:out value="${sessSeq }"/></h3>
		<h3>sessName : <c:out value="${sessName }"/></h3>
		<h3>sessId : <c:out value="${sessId }"/></h3>
	</div>
	<c:if test="${not empty sessSeq }">
		 <button type="button" name="" id="btnLogout">button</button>
		 <button type="button" class="btn btn-outline-primary" onclick="location.href='memberListTest';">list</button>
	</c:if>
			
</body>

<script	src="../../../bootstrap/bootstrap-5.1.3-dist/js/bootstrap.bundle.min.js"></script>
</html>

