<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie c = new Cookie("type01", URLEncoder.encode("/ 루트 설정", "utf-8"));
	c.setPath("/");
	c.setMaxAge(0);
	
	Cookie c2 = new Cookie("type02", URLEncoder.encode("/Lecture-WEB/jsp/cookie 루트 설정", "utf-8"));
	c2.setPath("/Lecture-WEB/jsp/cookie");
	c2.setMaxAge(0);
	
	Cookie c3 = new Cookie("type03", URLEncoder.encode("/Lecture-WEB/jsp/cookie/type02 루트 설정", "utf-8"));
	c3.setPath("/Lecture-WEB/jsp/cookie/type02");
	c3.setMaxAge(0);
	
	Cookie c4 = new Cookie("type04", URLEncoder.encode("/Lecture-WEB/jsp/cookie/type03 루트 설정", "utf-8"));
	c4.setPath("/Lecture-WEB/jsp/cookie/type03");
	c4.setMaxAge(0);
	
	Cookie c5 = new Cookie("type05", URLEncoder.encode("/Lecture-WEB/jsp/cookie/type04 루트 설정", "utf-8"));
	c5.setPath("/Lecture-WEB/jsp/cookie/type04");
	c5.setMaxAge(0);
	
	response.addCookie(c);
	response.addCookie(c2);
	response.addCookie(c3);
	response.addCookie(c4);
	response.addCookie(c5);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키삭제 완료</h2>
	<a href="get.jsp">설정된 쿠키확인</a>
</body>
</html>