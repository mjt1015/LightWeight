<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
 	<!-- Custom fonts for this template -->
    <link href="../resources/css/all.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="../resources/css/sb-admin-2.css" rel="stylesheet">
    <!-- Custom styles for this page -->
    <link href="../resources/css/dataTables.bootstrap4.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="get">
	<table class="table table-bordered" id="dataTable">
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
		 <tr>
		 	<td colspan="5"><input type="submit" value="글쓰기" formaction="crudWrite"></td>
		 </tr>
	</table>
</form>

<div class="pull-right">
	<ul class="pagination">
		<c:if test="${pageMaker.prev}">
			<li class="paginate_button previous"><a href="crudList?pageNum=${pageMaker.startPage-1}&amount=${pageMaker.bas.amount}">Previous</a></li>
		</c:if>
		<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
			<li class="paginate_button page-item"><a href="crudList?pageNum=${num}&amount=${pageMaker.bas.amount}">${num}</a></li>
		</c:forEach>
		<c:if test="${pageMaker.next}">
			<li class="paginate_button page-item next"><a href="crudList?pageNum=${pageMaker.endPage+1}&amount=${pageMaker.bas.amount}">Next</a></li>
		</c:if>
	</ul>
	</div>
	<div>
		<form action="crudList" method="get">
		<input type="hidden" name="pageNum" value="${pageMaker.bas.pageNum}">
		<input type="hidden" name="amount" value="${pageMaker.bas.amount}">
		<select name="type">
			<option value="">--</option>
			<option value="TC">제목 or 내용</option>
			<option value="TW">제목 or 작성자</option>
			<option value="CW">내용 or 작성자</option>
			<option value="TCW">제목 or 내용 or 작성자</option>
		</select>
		<input type="text" name="keyword">
		
		<input type="submit" value="검색">
		</form>
	</div>
	
	
	
	
	<!-- Bootstrap core JavaScript-->
    <script src="../resources/js/jquery.js"></script>
    <script src="../resources/js/bootstrap.bundle.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="../resources/js/jquery.easing.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="../resources/js/sb-admin-2.js"></script>

    <!-- Page level plugins -->
    <script src="../resources/js/jquery.dataTables.js"></script>
    <script src="../resources/js/dataTables.bootstrap4.js"></script>

    <!-- Page level custom scripts -->
    <script src="../resources/js/datatables-demo.js"></script>	
	
</body>
</html>