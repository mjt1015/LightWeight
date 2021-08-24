<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jquery 파일 연결을 위한 기본 -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script src="../resources/js/crud.js"></script>
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
			<td>
				${board.writer}
				<input type="hidden" id="writer" name="writer" value="${board.writer}">
			</td>
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
<div>
	<textarea rows="3" cols="30" id="reply"></textarea>
	<button id="replyadd">댓글 작성</button>
</div>
</body>
</html>












