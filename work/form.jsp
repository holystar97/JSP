<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>form demo</title>
</head>
<body>
	<form name="frm" method="post" action="action.jsp">
		아이디: <input type="text" id="id" name="id"><br>
		패스워드:  <input type="password" id="pw" name="pw"><br>
		이름 : <input type="text" id="name" name="name"><br>
		취미 : 야구<input type="checkbox" name="hobby" value="야구">
			축구<input type="checkbox" name="hobby" value="축구">
			농구<input type="checkbox" name="hobby" value="농구">
			배구<input type="checkbox" name="hobby" value="배구"><br>
		<input type="submit" value="전송">
	</form>
</body>
</html>