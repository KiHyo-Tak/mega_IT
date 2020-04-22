<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="conPath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		$(document).ready(function() {
			$('.sub').css('display','none');
			
			$('.p').each(function(index, item){
				$(this).click(function(){
					$('#sub'+index).toggle();
				});
			});
			
			/* $('.p').click(function(){
				$('.sub').toggle();
			}); */
		});
	</script>
</head>
<body>
	<c:set var="i" value="0"/>
	<c:forEach items="${list }" var="p">
		<div class="p">${p.id }</div>
		<div class="sub" id="sub${i }">${p.name } - ${p.address }</div>
		<c:set var="i" value="${i+1 }"/>
		<br><br><br>
	</c:forEach>
</body>
</html>