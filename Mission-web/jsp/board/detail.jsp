<%@page import="kr.ac.mlec.board.dao.BoardDAO"%>
<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="kr.ac.mlec.board.vo.BoardVO"%>
<%@page import="java.sql.*"%>
<%@page import="kr.ac.mlec.util.ConnectionFactory"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%
	// http://localhost:9999/Mission-Web/jsp/board/detail.jsp?no=5
	
	// 조회할 게시물번호 추출
	int no = Integer.parseInt(request.getParameter("no"));

    BoardDAO dao = new BoardDAO();
	//조회수 올리기
    dao.incrementViewCnt(no); //dao.변수명하면됨  증가부터시키고 보여주면됨
	// t_board 테이블에서 추출한 게시물을 조회
	BoardVO board = dao.selectByNo(no);
	
	
	 
	// 공유영역 등록
	pageContext.setAttribute("board", board);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>
	function goList() {
		location.href = "list.jsp"
	}
	
	function goDelete() {
		
		if(confirm('${param.no}번 게시글을 삭제할까요?')) {
			location.href = "delete.jsp?no=${param.no}"
		}
		
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
			<hr>
			<h1>게시물 상세</h1>
			<hr>
			<br>
			<table border="1" style="width: 80%">
				<tr>
					<th width="25%">번호</th>
					<td>${ board.no }</td>
				</tr>
				<tr>
					<th width="25%">제목</th>
					<td>${ board.title }</td>
				</tr>
				<tr>
					<th width="25%">작성자</th>
					<td>${ board.writer }</td>
				</tr>
				<tr>
					<th width="25%">내용</th>
					<td>${ board.content }</td>
				</tr>
				<tr>
					<th width="25%">조회수</th>
					<td>${ board.viewCnt }</td>
				</tr>
				<tr>
					<th width="25%">등록일</th>
					<td>${ board.regDate }</td>
				</tr>
			</table>
			<br>
			<br>
			<button onclick="goList()">목 록</button>
			<button onclick="goDelete()">삭 제</button>
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp"%>
	</footer>
</body>
</html>



