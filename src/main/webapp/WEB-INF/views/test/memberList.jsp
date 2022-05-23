<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>
<html lang="ko">

<head>
<meta charset="uTF-8">
<meta name="viewpoint" content="width=device-width, initial-scale=1.0">


</head>
<body>
<div class="container-sm">
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
					<td><c:out value="${item.ifmmName}" /></td>
					<td><c:out value="${item.ifmmId}" /></td>
				</tr>
			</c:forEach>
		</c:otherwise>
	</c:choose>
</div>

</body>

</html>