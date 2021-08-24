<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post">
	<table>
		<tr>
			<td>번호</td>
			<td>
				${board.bno}<input type="hidden" id="bno" name="bno" value="${board.bno}">
			</td>
		</tr>
		<tr>
			<td>제목</td>
			<td><input type="text" id="title" name="title" value="${board.title}"></td>
		</tr>
		<tr>
			<td>내용</td>
			<td><textarea rows="10" cols="20" name="content">${board.content}</textarea> </td>
		</tr>
		<tr>
			<td>작성자</td>
			<td>${board.writer}</td>
		</tr>
		<tr>
			<td>작성일</td>
			<td>${board.regdate}</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="수정" formaction="crudModify">
				<input type="submit" value="삭제" formaction="crudRemove">
				<input type="submit" value="이전으로" formaction="crudList">
			</td>
		</tr>
	</table>
</form>
</body>
</html>