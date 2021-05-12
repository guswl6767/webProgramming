
<%@page import="kr.co.mlec.member.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	// 객체 생성 및 초기화
	MemberVO member = new MemberVO(); //id password 정보가져있는 클래스 가져오기
	member.setId(id);
	member.setPassword(password);
	
	// 세션등록
	session.setAttribute("member", member);//멤버라는 이름으로 멤버vo객체 임포트시킨것
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>세션설정 완료</h2>
	<a href="get.jsp">설정된 세션정보 보기</a>
</body>
</html>