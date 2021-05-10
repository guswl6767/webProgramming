<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%--
 
   http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp?id=aaa&name=bbb 요청했을 때 id의 값은??
  --%>
  
  <%
   String id = request.getParameter("id");
   String [] hobbys = request.getParameterValues("hobby"); 
   
   if(hobbys == null) {
	   hobbys = new String[]{"파라미터 없음"};
   }
  %>
  
  id: <%= id %><br>
  id : <%= request.getParameter("id") %><br>
  id : ${ param.id }<br>
  
  name : <%= request.getParameter("name") %><br> <%--이 없을경우 jsp경우 null로 뜨지만 el은 안뜸 null을 변환할 방법이 필요없다는 점에서 el이 편함 그래서 파라미터가 안날아와도 500에러안뜸(empty) --%>
  name : ${ param.name }<br>
  
   <%--
 
   http://localhost:9999/Lecture-Web/jsp/el/exam02.jsp?id=aaa&hobby=reading&hobby=music&hobby=movie 요청했을 때 id hobby의 값은?? 
  --%>
  
   hobbys[0] : <%= hobbys[0] %><br>
   hobbys[0] : ${ paramValues.hobby[0] }<br>
   empty hobbys[0] : ${ empty paramValues.hobby[0] }<br>
  
</body>
</html>