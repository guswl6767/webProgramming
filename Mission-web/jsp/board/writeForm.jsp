<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새글등록</title>
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/layout.css">
<link rel="stylesheet" href="${ pageContext.request.contextPath }/resources/css/board.css">
<script src="${ pageContext.request.contextPath }/resources/js/jquery-3.6.0.min.js"></script>
</head>
<body>
	<header>
		<jsp:include page="/jsp/include/topMenu.jsp" />
	</header>
	<section>
		<div align="center">
		    <hr>
		    <h1>새글 등록폼</h1>
		    <hr>
		    <br>
		    <form action="write.jsp" method="post">   <%-- 서버에 요청할때 post방식으로 전달하는 것이 method --%>
		      <input type="hidden" name="writer" value="${userVO.id }"> <%--키보드로 입력받지않았지만 submit버튼 눌렀을때 입력받지않은 임의의 정보도 전달하고싶을때 쓰는 것 --%>
		    <table style="width:100%">
		       <tr>
		           <th width="25%">제목</th>
		           <td><input type="text" name="title" size="80" required="required"></td> <%--required써야 안쓰면 안넘어감 --%>
		       </tr>
		       
		        <tr>
		           <th width="25%">작성자</th>
		           <td>${userVO.id }</td>
		           <%-- <td><input type="text" name="writer" size="80" value="${userVO.id }" readonly></td> --%>
		       </tr>
		       
		        <tr>
		           <th width="25%">내용</th>
		           <td>
		             <textarea rows="7" cols="80" name="content" required="required"></textarea>
		           </td>
		       </tr>
		    </table>
		    
		      <br>
		      <input type="submit" value="등록"/>
		    </form>
		</div>
	</section>
	<footer>
		<%@ include file="/jsp/include/footer.jsp" %>  <%-- xml, include, forward 위치 mission-web뒤 다른 파일들은 mission-web앞 --%>
	</footer>
</body>
</html>
