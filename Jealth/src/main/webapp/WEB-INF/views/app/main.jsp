<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>workout</title>
</head>
<body>
	<h1>${userInfo.userId}님 로그인 성공</h1>
	<form action="/user/logoutTry" method="post">
		<button>logout</button>
	</form>
	
</body>
</html>