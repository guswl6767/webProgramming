<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	
	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue"); //날아오는 데이터 추출
	
	// 쿠키생성
	Cookie cookie = new Cookie(cName, cValue); //이름과 밸류값으로 쿠키를 생성 
	
	// 쿠키전송
	response.addCookie(cookie); //클라이언트에게 쿠키보냄
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키 설정 완료</h2>
	<a href="get.jsp">설정된 쿠키 확인</a>
</body>
</html>