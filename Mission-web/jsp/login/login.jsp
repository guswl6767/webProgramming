<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
<script>
     function checkLogin() {
    	 
    	 let f = document.loginForm
    	 if(f.id.value =='') {
    		 
    		 alert("아이디를 입력해주세요")
    		 f.id.focus()
    		 return false
    	 }                   //f.id.value = form에 id에 value 값
    	 
            if(f.password.value =='') {
    		 
    		 alert("패스워드를 입력해주세요")
    		 f.id.focus()
    		 return false
    	 }   
    	 return true
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
	     <h1>로그인</h1>
	     <hr>
	  <br>
	  <form name="loginForm" action="loginProcess.jsp" method="post" onsubmit="return checkLogin()" > <%-- onsubmit은 submit  버튼눌렀을때 jsp에 보내자 보내지말자하는것 false면 전송x --%>
	     <table style="width:60%">             <%-- 유일하게 form 태그만 네임속성으로 접근가능 document.loginForm.id 폼태그의 아이디 추출가능 --%>
	       <tr>
	            <th>아이디</th>
	            <td><input type="text" name="id"></td>
	     </tr>
	     <tr>
	            <th>패스워드</th>
	            <td><input type="password" name="password"></td>
	     </tr>
	     </table>
	     <br>
	     
	     <button type="submit">로그인</button>
	  </form>
	 
	  
	  </div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>  <%-- xml, include, forward 위치 mission-web뒤 다른 파일들은 mission-web앞 --%>
	</footer>
</body>
</html>