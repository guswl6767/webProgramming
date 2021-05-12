<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>    
<%
	request.setCharacterEncoding("utf-8");//form태그의 인코딩 쿠키에서의 인코딩은 아님
	
	String cName = request.getParameter("cName");
	String cValue = request.getParameter("cValue");
	
	// encoding
	cName = URLEncoder.encode(cName, "utf-8");
	cValue = URLEncoder.encode(cValue, "utf-8");
	
	// 쿠키생성
	Cookie cookie = new Cookie(cName, cValue);
	
	// 쿠키전송
	response.addCookie(cookie);
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