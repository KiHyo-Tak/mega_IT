<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		button{margin: 10px;}
		.selected {border: 1px solid red;}
		.unselected {border: 1px solid blue;}
	</style>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(document).ready(function(){
			
		});
	</script>
</head>
<body>
	${catgoryList }
	${mylist }
	<c:set var="mainTemp" value=""/>
	<c:forEach items="${catgoryList }" var="category">
		<c:set var="cno" value="${category.cno }"/>
		<!--  cno를 "1, " 같은 스트링 형식으로 -->
		<c:if test="${mainTemp !=category.main   }">
			<h1>${category.main }</h1>
		</c:if>
		<button><c:if test="${mylist.indexOf(cno) != -1}"> ${category.sub }</c:if>
		 <c:if test="${mylist.indexOf(cno) eq -1}"> ${category.sub } 아님</c:if>
		</button>
		<c:set var="mainTemp" value="${category.main }"/>	
	</c:forEach>
	
	<br><br>
	${cno }
	${mylist.indexOf("5, ")}
</body>
</html>