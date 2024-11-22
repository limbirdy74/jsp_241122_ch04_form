<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
</head>
<body>
	<h2>회원 가입</h2>
	<hr>
	<form action="memberJoinOk.jsp">
		아이디 : <input type="text" name="memberId"><br><br>
		비밀번호 : <input type="password" name="memberPw"><br><br>
		이름 : <input type="text" name="memberName"><br><br>
		나이 : <input type="text" name="memberAge" value="27" readonly="readonly"><br><br>
		성별 : <input type="radio" name="gender" value="male" checked="checked">남자<input type="radio" name="gender" value="female">여자<br><br>
		전화번호 :
			<select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="019">019</option>
			</select>
			- <input type="text" name="phone2" maxlength="4" size="4"> - <input type="text" name="phone3"><br><br>
		취미 :
		<input type="checkbox" name="hobby" value="게임" checked="checked"> 게임
		<input type="checkbox" name="hobby" value="독서"> 독서
		<input type="checkbox" name="hobby" value="운동"> 운동
		<input type="checkbox" name="hobby" value="영화"> 영화
		<br><br>
		자기소개 : <br>
		<textarea rows="5" cols="50" name="intro"></textarea><br><br>
		<input type="submit" value="회원가입">
		<input type="reset" value="다시작성">
	
	</form>
</body>
</html>