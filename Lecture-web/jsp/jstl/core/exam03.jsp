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
 --%>
     <c:if test="${ empty param.type }"> // param.type=='' 이렇게 쓰면 안됨
     <h1>type 파라미터가 전송되지 않았습니다</h1>
     </c:if>
    <c:if test="${ param.type == 'U' }">
     <h1>일반사용자님 환영합니다</h1>
     </c:if>
     <c:if test="${ param.type eq 'S'}" >
       <h1>관리자님 환영합니다</h1>
     </c:if>
</body>
</html>