<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


</head>
<body>	

<h1>레시피 게시판( 다중 파일 처리를 위한 영역)</h1>

<table border="1">
	<tr>
		<td>
			아이디
		</td>
		<td>
			넘버
		</td>
	</tr>
</table>

<button type="button" onclick="location.href='${contextPath }/recipe/recipeBoardWrite'">글쓰기</button>

</body>
</html>