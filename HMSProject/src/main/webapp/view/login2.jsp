<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%

if(request.getAttribute("msg")!=null){
   out.print(request.getAttribute("msg"));
}

%>


<form action="login" method="post">
Username<input type="text" name="username">
Password<input type="password" name="password">
<input type="submit" value="Login">
</form>

<a href="createaccount">Create Account</a>





</body>
</html>