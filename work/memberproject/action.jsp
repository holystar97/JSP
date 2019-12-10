<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//POST방식 한글 변환 처리 :ISO--8859-1(서유럽어) --> UTF-8
	request.setCharacterEncoding("UTF-8");
	
	

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--인자 수신 -->
	<span></span>
	
	<jsp:useBean id="member" class="com.javateam.jsp.vo.MemberDTO" scope ="request"/>
	
	<!-- DTO 인스턴스(member)의 멤버필드값 대입 : setter  -->
	<jsp:setProperty name="member" property="*"/>
	
	<!-- getter -->
	아이디 : <jsp:getProperty name="member" property="id" /><br>
	패스워드 : <jsp:getProperty name="member" property="pw" /><br>
	이름 : <jsp:getProperty name="member" property="name" /><br>
	성별 : <jsp:getProperty name="member" property="gender" /><br>
	주소 : <jsp:getProperty name="member" property="address" /><br>
	
	
	
	
</body>
</html>