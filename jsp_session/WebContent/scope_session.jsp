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
	String user = (String)pageContext.getAttribute("user_name");
	String address = (String)session.getAttribute("address");
	String password = (String)application.getAttribute("password");
	Integer age = (Integer)request.getAttribute("age");
	/*
	int age = 0;
	if(request.getAttribute("age")!= null){
		age = (int)request.getAttribute("age");
	}
	*/
%>
<h1>유저 : <%= user %></h1>
<h1>주소 : <%= address %></h1>
<h1>암호 : <%= password %></h1>
<h1>나이 : <%= age %></h1>
</body>
</html>