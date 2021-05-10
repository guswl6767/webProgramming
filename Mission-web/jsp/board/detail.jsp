<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="kr.ac.mlec.board.vo.BoardVO"%>
<%@page import="java.sql.*"%>

<%@page import="kr.ac.mlec.util.ConnectionFactory"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // http://localhost:9999/Mission-Web/jsp/board/detail.jsp?no=5
    
    
    // 조회할 게시물 번호 추출
    int no = Integer.parseInt(request.getParameter("no")); // getparameter는 스트링만 가져와서 앞에 인티저 펄스인트쓰기
    
    // t_board 테이블에서 추출한 게시물을 조회
    Connection conn = new ConnectionFactory().getConnection();
    StringBuilder sql = new StringBuilder();
    sql.append("select no, title , writer, content, view_cnt ");
    sql.append("    , to_char(reg_date, 'yyyy-mm-dd')as reg_date ");
    sql.append("   from t_board ");
    sql.append("  where no= ?"); //뭐가져오는지 모를때는 물음표쓰기
    
    PreparedStatement pstmt = conn.prepareStatement(sql.toString());
    pstmt.setInt(1, no); //물음표 셋팅해야함 (where절)
    ResultSet rs = pstmt.executeQuery(); // 결과값 가져오깅 무조건 한개 가져옴
    
    
    BoardVO board = null; //화면에 여러개 나오는 거는 boardlist 한개만 나오는 경우 board 즉 no값
    
    if (rs.next())        {                               //첫번째 행 가르키게 할라고 next
            int bNo =rs.getInt("no");
            String title = rs.getString("title");
            String writer = rs.getString("writer");
            String content = rs.getString("content");
            int viewCnt =rs.getInt("view_cnt");
            String regDate = rs.getString("reg_date");
            
            board = new BoardVO(bNo, title, writer, content, viewCnt, regDate); //html과 이변수를 공유해야하기때문에 공유영역에 올림 즉 보고싶어하는 데이터를 공유영역에 올린다
    }
    
    JDBCClose.close(conn,pstmt);
    //공유영역 등록
    pageContext.setAttribute("board",board);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
  function goList(){
	  
	  location.href = "list.jsp" // 이동시키기 위해서는 location.href를 무조건 써야함 자바스크립트로 경로를 변경해주는 것
  }
</script>
</head>
<body>
<div align="center">
   <hr>
   <h1>게시물 상세페이지</h1>
   <hr>
   <br>
    <table border="1" style="width:80%">
    <tr>
        <th width="25%">번호</th>
        <td>${board.no }</td>
    </tr>
     <tr>
        <th width="25%">제목</th>
        <td>${board.title }</td>
    </tr>
     <tr>
        <th width="25%">작성자</th>
        <td>${board.writer }</td>
    </tr>
     <tr>
        <th width="25%">내용</th>
        <td>${board.content }</td>
    </tr>
     <tr>
        <th width="25%">조회수</th>
        <td>${board.viewCnt }</td>
    </tr>
     <tr>
        <th width="25%">등록일</th>
        <td>${board.regDate }</td>
    </tr>
    
    </table>
    <br><br>
    <button onclick="goList()">목  록</button>
   </div>
</body>
</html>