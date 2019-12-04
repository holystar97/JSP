<%--JSP 주석(comment) --%>
<%--page 지시어 (directive : 디렉티브) --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%!


	//선언부 (declaration) : JSE ! JEE (x)
	//변수, 메서드 (함수 )선언
	String str2="java";
	
	
	public void print(String str){
		System.out.println("str: "+ str); // JEE (X)
	}

%>
    
    
<%
	// scriptlet(스크립트릿) : 변수/ 구문 : JEE 영역 (JSP)
	String str="abcd";
	//JSE 
	out.println("str:" +str);
	out.println("str:" +str);
	
	//JEE
	// system 클래스의 out 멤버 필드 x 
	// out : JSP 기본 (내장) 객체 (인스턴스). 웹브라우저 화면 인쇄
	// 객체(인스턴스) 생성 과정 없이 바로 사용할 수 있는 객체 	
	// 추후에 현업에서는 JSTL/EL 혹은 타 태그(tag) 라이브러리로 대체되는 경향 ! 
	// 여기서 println 메서드는 웹브라우저 상의 개행(줄바꿈) 기능 (x)
	// 줄바꿈 -> br 태크 
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 표현식 (Expression) : 주의 ) 마감 (종결) 부호 (;) (X) 어떤 형태 (메서드, 변수, 리터럴 (값) , 표현...) 값이 반환되는 경우만 됨 
	ex) void 리턴(결과값)의 함수 (X) 
-->
	str : <%=str %> <br>
	<%=1+2+3 %> <br>
	<%=Math.random() %> <br>
	str2 :<%=str2 %>
	
</body>
</html>