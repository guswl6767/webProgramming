<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//session.removeAttribute("id");
	//session.removeAttribute("password"); 방법 두가지
	
	session.invalidate();//세션영역모든 애들 다지우기 위한 것
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 삭제 완료</h2>
	<a href="get.jsp">삭제된 세션정보 보기</a>
</body>
</html>