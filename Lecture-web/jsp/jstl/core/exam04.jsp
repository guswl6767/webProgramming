<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
      http://localhost:9999/Lecture-Web/jsp/jstl/core/exam03.jsp?type=u
      
      type 'u' =>일반사용자님 환영합니다
           's' => 관리자님 환영합니다
      type X => type 파라미터가 전송되지 않았습니다.
 --%>
 
 
     <c:choose>
       <c:when test="${param.type eq 'U' }">
          <h2>일반사용자 환영</h2>
       </c:when>
       
      <c:when test="${param.type == 'S' }">
        <h2>관리자 환영</h2>
      </c:when> 
       <c:otherwise>
       <h2>파라미터 전송 안됨</h2>
        </c:otherwise>
     </c:choose>
 
</body>
</html>