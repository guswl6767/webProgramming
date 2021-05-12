<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String  id = session.getId();//세션의 아이디(구분자) 가져오기 

	int interval = session.getMaxInactiveInterval();//세션의 정의되어있는 유효시간이 몇분인지 지정되어있는지 물어보는 것 기본은 30분
	
	// 세션의 유효시간 변경(2초)
	session.setMaxInactiveInterval(2); 
	
	int interval2 = session.getMaxInactiveInterval();
	
	// 마지막 접근시간
	long lastTime = session.getLastAccessedTime();
	//String pattern = "yyyy년 MM월 dd일 hh시 mm분 ss초";
	String pattern = "yyyy년 MM월 dd일 hh:mm:ss";
	SimpleDateFormat sdf = new SimpleDateFormat(pattern);//시간정보를 원하는 형태로 뽑아낼수이음
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션 ID(JSESSIONID) : <%= id %></h2>
	<h2>기존 유효시간 : <%= interval %>초</h2>
	<h2>변경 유효시간 : <%= interval2 %>초</h2>
	<h2>마지막 접근시간 : <%= sdf.format(new Date(lastTime)) %></h2>
</body>
</html>








