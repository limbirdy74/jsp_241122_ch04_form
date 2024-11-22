<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 확인</title>
</head>
<body>
	<h2>회원 가입 정보</h2>
	<hr>
	<%
		String mid = request.getParameter("memberId");
		String mpw = request.getParameter("memberPw");
		String mname = request.getParameter("memberName");
		String mage = request.getParameter("memberAge");  //나이
		String mgender = request.getParameter("gender");
		if (mgender.equals("male")) {
			mgender = "남성";
		} else {
			mgender = "여성";
		}
		String mphone1 = request.getParameter("phone1");
		String mphone2 = request.getParameter("phone2");
		String mphone3 = request.getParameter("phone3");
		String mintro = request.getParameter("intro");
		
		// 체크박스. 배열로 들어가 있음. request 박스안에 박스가 있다고 보면 됨
		String[] mhobby = request.getParameterValues("hobby");  //취미
	%>
	<ul>
		<li>아이디 : <%= mid %></li>
		<li>비밀번호 : <%= mpw %></li>
		<li>이름 : <%= mname %></li>
		<li>나이 : <%= mage %></li>
		<li>전화번호 : <%= mphone1 %> - <%= mphone2 %> - <%= mphone3 %></li>
		<li>성별 : <%= mgender %></li>
		<li>취미 :
			<%
				if (mhobby != null) {  // 취미를 선택 안할 수도 있으므로
					for (int i=0;i<mhobby.length;i++) {
						out.println(mhobby[i]);
					}
				} else {
					out.println("취미 선택 없음");
				}

			%>
		</li>
		<li>자기소개 : <%= mintro %></li>
	</ul>
</body>
</html>