<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.co.mlec.board.BoardVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
     
    // 1. 자바빈즈 클래스 + 콜렉션 꼭알기
    /*
    BoardVO board = new BoardVO();
    board.setTitle("성공");
    
    List<BoardVO> boardList = new ArrayList(); // 보드브이오를 저장하는 리스트 생성
    boardList.add(board);    
    pageContext.setAttribute("boardList", boardList);
    */
    
    //2. 자바빈즈클래스 + 배열
    /*
    BoardVO board = new BoardVO();
    board.setTitle("성공");
    
    BoardVO[] boardList = {board}; //보드 브이오로 만들어진 보드리스트 배열
    pageContext.setAttribute("boardList", boardList);
    */
    //3. 맵객체 + 배열
    /*
    Map<String, String> board = new HashMap<>();
    board.put("title","성공");
    
    Map[] boardList = {board}; //키값이 스트링 스트링인 보드값을 가지는 것
    
    pageContext.setAttribute("boardList", boardList);
    */
    //4. 맵객체 + 콜렉션
    Map<String, String> board = new HashMap<>();
    board.put("title","성공");
    
    List<Map<String, String>> boardList = new ArrayList<>(); //리스트가 맵형
    boardList.add(board);
    
    pageContext.setAttribute("boardList", boardList);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <%--
  
       ${boardList[0].title} 출력시 "성공" 출력 코드 작성 
  
   --%>
    성공/실패 여부 : ${boardList[0].title}<br>
</body>
</html>