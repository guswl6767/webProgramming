<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie[] cookies = request.getCookies(); //리퀘스트 객체로 날아온 쿠키추출 쿠키배열로 날아옴

	StringBuilder sb = new StringBuilder();
	if(cookies != null) {
		for(Cookie c : cookies) {
			String cName = c.getName();
			String cValue = c.getValue(); //이름 밸류 뽑아냄 스티링빌더를 사용해서 하나의 스트링으로 만들어준 것 그래서 sb.append
			
			sb.append("쿠키이름 : " + cName + ", ");
			sb.append("쿠키값 : " + cValue + "<br>");
		}
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>설정된 쿠키 정보</h2>
	<%= sb.toString() %>
	<a href="makeForm.jsp">쿠키설정 이동</a>
</body>
</html>