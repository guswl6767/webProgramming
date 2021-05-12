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
     
<!--        "delete.jsp?no=4" 삭제하려고하는 게시물 번호 추출해야함 -->
     
     <%
      int no = Integer.parseInt(request.getParameter("no"));    /* 삭제하려고 하는 번호 추출 스트링이므로 정수로바꿔줌 */
     
        BoardDAO board = new BoardDAO();
        
        board.deleteBoard(no);
     %>
<script>
    
    location.href= "list.jsp"
    </script>