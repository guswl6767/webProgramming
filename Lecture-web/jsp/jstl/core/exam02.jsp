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
 value 속성만 출력 : <c:out value="JSTL"/><br>
 escapeXML true : <c:out value="<hr>" /><br>
 escapeXML false : <c:out value="<hr>" escapeXml="false" /><br>
<%--  <c:set var="msg" value="default 설정" /> --%>
 
 msg= ${msg }<br>
 msg : <c:out value="${msg }" default="msg변수 미설정"/><br>
</body>
</html>