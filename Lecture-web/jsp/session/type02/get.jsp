<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String password = (String)session.getAttribute("password");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	설정된 세션 id : <%= id %><br>
	설정된 세션 password : <%= password %><br>
	<hr>
	설정된 세션 id : ${ sessionScope.id }<br>
	설정된 세션 password : ${ sessionScope.password }<br> <%--  직접 el로 가져올수있음 방법2가지 --%>
	
	<a href="remove.jsp">세션삭제</a>
</body>
</html>