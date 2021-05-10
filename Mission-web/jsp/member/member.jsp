<%@page import="kr.ac.mlec.util.JDBCClose"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.ac.mlec.util.ConnectionFactory"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%--
     <작업순서>
     1. t_board 테이블에서 전체 게시물을 조회
     2. 조회된 데이터를 tr, td에 출력
    
    
     --%>
     
<%
     Connection conn = new ConnectionFactory().getConnection(); //이미 서블릿이 jsp 파일 변환할때 try있어서 안써ㅗ됨
     StringBuilder sql = new StringBuilder();
     sql.append("select id, name ,password, email_id, tell, to_char(reg_date,'yyyy-mm-dd') as reg_date "); //시분초 안나오게 하는거 to_char(묶어서 하기)
     sql.append(" from t_member ");
     
     
     PreparedStatement pstmt = conn.prepareStatement(sql.toString());
     ResultSet rs = pstmt.executeQuery();
     
     
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

    <div align="center">
  <hr width="70%">
  <h1>전체 게시글 목록</h1>
  <hr width="70%">
  <br>
  <table border="1" style="width : 70%;">
      <tr>
         <th width="7%">id</th>
         <th>이름</th>
         <th width="16%">비번</th>
         <th width="20%">이메일</th>
         <th width="20%">번호</th>
         <th width="20%">등록일</th>
      </tr>
       <%
            while(rs.next()) {
              String id = rs.getString("id");
              String name = rs.getString("name");
              String password = rs.getString("password");
              String email_id = rs.getString("email_id");
              String tell = rs.getString("tell");
              String regDate = rs.getString("reg_date");
       %>
      <tr>
          <td><%= id %></td>
          <td><%= name %></td>
          <td><%= password %></td>
          <td><%= email_id %></td>
          <td><%= tell %></td>
          <td><%= regDate %></td>
          
      <%
            }
      %>
      </tr>
  
  </table>
  </div>
  
  
</body>
</html>

<%

  JDBCClose.close(conn,pstmt);
%>