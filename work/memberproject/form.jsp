<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko-kr">
<head>
<meta charset="UTF-8">
<title>회원가입(demo)</title>
<style>
.err_msg{
	color:red;}
</style>

<script>
window.onload=function(){
	
	var id =document.getElementById("id");
	
	//아이디 필드에서 벗어날 때 (이벤트) 처리 (핸들러)
	id.onblur= function(){
		var regex=/[a-zA-Z]{1}\w{7,19}/;
		console.log("id : " +id.value);
		
		if(!regex.test(id.value)){
			// 유효 데이터가 아니다 
			document.getElementById("id_err").innerText= "아이디는 영문자로 시작하여 8~20사이로 입력하십시오.";
		}else{
			document.getElementById("id_err").innerText= "";
		}
	} // 
	
	var pw=document.getElementById("pw");
	
	pw.onblur=function(){
		
		var regex=/(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}/;
		console.log("pw: "+ pw.value);
		
		if(!regex.test(pw.value)){
			document.getElementById("pw_err").innerText="패쓰워드는 대/소/특수문자/숫자를 혼합하여 8~20까지를 입력하시오.";
		}else{
			document.getElementById("pw_err").innerText="";
		}
		
		
	}
	
	
	
	
	
	
}
</script>

</head>
<body>


	<!-- <form name="member_form" 
		  method="post"
		  action="action2.jsp">
		
		아이디 : <input type="text" id="id" name="id" size="20" maxlength="20" pattern ="[a-zA-Z]{1}\w{7,19}" title="아이디는 영문자로 시작하여 8~20사이로 입력하십시오." placeholder="아이디를 입력하십시오."
			value="123" required
		/><br>
		패스워드: <input type="text" id="pw" name="pw" size="20" maxlength="20" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}" title="패쓰워드는 대/소/특수문자/숫자를 혼합하여 8~20까지를 입력하시오." placeholder="패쓰워드를 입력하세요 " required/><br>
		이름 :<input type="text" id="name" name="name" size="20" maxlength="50" /><br>
		성별: 남<input type="radio" id="gender1" name="gender" value="m"/> &nbsp;
			 여<input type="radio" id="gender2" name="gender" value="f"/> <br>
		주소 : <input type="text" id="address" name="address" size="50" maxlength="300" /><br>
		
		<button type="submit">가입 </button>
		<input type="submit" name="submitBtn" value="가입" /> &nbsp;
		<input type="reset" value="취소">
		
		
		
	</form> -->



	<form name="member_form" 
		  method="post"
		  action="action2.jsp">
		
		아이디 : <input type="text" id="id" name="id" size="20" maxlength="20" pattern ="[a-zA-Z]{1}\w{7,19}" title="아이디는 영문자로 시작하여 8~20사이로 입력하십시오." placeholder="아이디를 입력하십시오."
			value="123" required/>
			
			<!--아이디 에러 메시지  -->
			<span id="id_err" class="err_msg" ></span><br>
			
		패스워드: <input type="text" id="pw" name="pw" size="20" maxlength="20" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*\W).{8,20}" title="패쓰워드는 대/소/특수문자/숫자를 혼합하여 8~20까지를 입력하시오." placeholder="패쓰워드를 입력하세요 " required/>
		
		
					<!--비밀번호 에러 메시지  -->
			<span id="pw_err" class="err_msg" ></span><br>
			
			
			
		이름 :<input type="text" id="name" name="name" size="20" maxlength="50" /><br>
		성별: 남<input type="radio" id="gender1" name="gender" value="m"/> &nbsp;
			 여<input type="radio" id="gender2" name="gender" value="f"/> <br>
		주소 : <input type="text" id="address" name="address" size="50" maxlength="300" /><br>
		
		<!-- <button type="submit">가입 </button> -->
		<input type="submit" name="submitBtn" value="가입" /> &nbsp;
		<input type="reset" value="취소">
		
		
		
	</form>




</body>
</html>
