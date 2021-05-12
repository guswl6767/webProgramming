<%@page import="kr.ac.mlec.login.dao.LoginDAO"%>
<%@page import="kr.ac.mlec.login.vo.LoginVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%--  1. 전송된 데이터(id, password)추출
 2. 데이터베이스에서 일치하는 회원여부 판단
 3. 판단결과에 따라 알림창띄우기--%>


<%
request.setCharacterEncoding("utf-8");  //get방식은 요청라인에 id?= post방식은 body부분에 id?= 로 날아감 예시  로그인 여부 판단할수있는 로그인 dao바로 만들기

String id = request.getParameter("id");
String password = request.getParameter("password");

LoginVO loginVO = new LoginVO(); // loginvo로 묶어주고
loginVO.setId(id);
loginVO.setPassword(password);

LoginDAO dao = new LoginDAO(); // 로그인 여부를 판단하기 위해서 logindao를 호출하기위해 만듦
LoginVO userVO = dao.login(loginVO);

String msg = "";
String url = "";
if(userVO != null) {
	//로그인 성공
	msg="로그인을 성공";
	url=request.getContextPath();
	
	session.setAttribute("userVO", userVO);//세션등록
} else{
	//로그인 실패
	msg= "아이디 패스워드가 잘못 입력됨";
	url="login.jsp";
}
pageContext.setAttribute("msg", msg); //공유영역에 등록 자바랑 자바스크립트는 공유할수가없기때문에 공유영역에 등록해야한다
pageContext.setAttribute("url", url);
//System.out.println(loginVO); 혼자할때 해보기
%>
<script>
      alert("${msg}")
      location.href='${url}'
</script>