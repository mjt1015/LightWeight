<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	회원가입
	<form action="membership" method="post">
		<table>
			<tr>
				<td>성명</td>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<td>생년월일</td>
				<td>
						<input type="text" placeholder="년도를 입력하세요">년도
					<select>
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
					</select>월 
					<select>
						<option>01</option>
						<option>02</option>
						<option>03</option>
						<option>04</option>
						<option>05</option>
						<option>06</option>
						<option>07</option>
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
					</select>일
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td>
					남성<input type="radio" name="gender" value="men">
					여성<input type="radio" name="gender" value="women">
				</td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td>
					<select>
						<option>010</option>
						<option>011</option>
						<option>016</option>
					</select>-
					<input type="text">-
					<input type="text">
				</td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="id"></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td><input type="submit" value="가입하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>