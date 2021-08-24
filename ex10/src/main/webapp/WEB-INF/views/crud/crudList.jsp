<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>번호</td><td>제목</td><td>작성자</td><td>작성일</td><td>수정일</td>
		</tr>
		
		<c:forEach items="${list}" var="board">
		<tr>
			<td>${board.bno}</td>
			<td><a href="crudGet?bno=${board.bno}">${board.title}</a></td>
			<td>${board.writer}</td>
			<td>${board.regdate}</td>
			<td>${board.updatedate}</td>
		</tr>
		</c:forEach>
		 
	</table>
</body>
</html>