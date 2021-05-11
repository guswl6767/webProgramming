<%@page import="kr.ac.mlec.board.vo.BoardVO"%>
<%@page import="kr.ac.mlec.board.dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
       작업순서
       1. POST방식으로 전달된 제목, 작성자, 글쓴이의 정보를 추출
         http://localhost:9999/Mission-Web/jsp/board/write.jsp
           title=제목&write=홍길동$content=내용입니다
           
       2. 추출된 정보를 t_board테이블에 새로운 게시글로 삽입
       3. 목록페이지로 이동
     --%>
     
     <%
       request.setCharacterEncoding("utf-8"); // post방식일때만  인코딩! 사용 get방식일땐 안써도됨 
       String title = request.getParameter("title");
       String writer = request.getParameter("writer");
       String content = request.getParameter("content");
       
       BoardVO board = new BoardVO();
       board.setTitle(title);
       board.setWriter(writer);
       board.setContent(content);
       
       BoardDAO dao = new BoardDAO();
       dao.insertBoard(board);
       //dao.insertBoard(title, writer, content);
     %>
<script>
    alert("새글등록 완료하였습니다.")
    location.href="${pageContext.request.contextPath}/jsp/board/list.jsp"
    </script>