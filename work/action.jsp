<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.*" %>

<%
	//인자 한글 변환 처리 :인자 처리 전에 호출 
	request.setCharacterEncoding("UTF-8");


	// case -1 
	/*
	String id=request.getParameter("id");
	String pw=request.getParameter("pw");
	//String name=request.getParameter("name");
	*/
	// case -2
	
	/*
	String hobby[]= request.getParameterValues("hobby");
	String name=request.getParameterValues("name")[0];
	
	for(String h : hobby){
		out.println("취미 : "+ h+ "<br>");
	}*/
	
	//case -3 : 반복자 패턴 ex) GoF Pattern 

	/*
	Enumeration<String> en =request.getParameterNames();
	String key="";
	String value="";
	
	while(en.hasMoreElements()){
		key=en.nextElement();
		if(key.equals("hobby")){
			String values[]=request.getParameterValues(key);
			
			for(String h: values){
				out.println("취미: "+ h + "<br>");
			}
			
		}
		else{
			value=request.getParameter(key);
		}
		request.getParameter(key);
		out.println(key + ":" + value + "<br>");
	}	// while
		
	*/
	// case -4 :Map
	
	
	Map<String,String[]> map= request.getParameterMap();
	
	
	//case 4-1
	/*
	Set<Map.Entry<String,String[]>> set= map.entrySet();
	
	Iterator<Map.Entry<String,String[]>>it=set.iterator();
	
	while(it.hasNext()){
		
		Map.Entry<String,String[]> entry=it.next();
		String key =entry.getKey();
		String vals[] = entry.getValue();
		
		if(vals.length==1){ // 값이 낱개 
			out.println(key+ ":"+ vals[0]+ "<br>");
		} else{ // 값이 다수 
			out.println(key+":");
			for (String s: vals){
				out.println(s+ " ");
			}
			out.println("<br>");
		}
	
	}*/
	
	//case 4-2
	/*
	Set<String> set= map.keySet();
	Iterator<String> it=set.iterator();
	while(it.hasNext())
	{
		String key=it.next();
		//out.println(key+ ": " + map.get(key)[0]+ "<br>");
		String vals[]= map.get(key);
		
		
		if(vals.length==1){ // 값이 낱개 
			out.println(key+ ":"+ vals[0]+ "<br>");
		} else{ // 값이 다수 
			out.println(key+":");
			for (String s: vals){
				out.println(s+ " ");
			}
			out.println("<br>");
		}
	
	}
	*/
	
	
	//case 4-3
	//since JDK 1.8, 함수형 프로그래밍 (람다 lambda 수식 사용)
	//map.forEach((k,v)->System.out.println(k+ " : "+ v[0]));
	//map.keySet().forEach(k->System.out.println(k+":"+map.get(k)[0]));
	
	map.forEach((k,v)->{
		for(String m:v )System.out.println(k+":" +m);
	});
	
	
	
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>폼데이터 처리</title>
</head>
<body>
	<!-- 아이디 :  --><%--=id --%><br>
	<!--  패스워드 : --><%--=pw --%><br>
	<!-- 이름 : --> <%--=name --%>
</body>
</html>