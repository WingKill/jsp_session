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
	// 형변환이 필요하다. ObjectinputStream을 쓰는 건가?
	String name = (String)session.getAttribute("name");
	int age = (Integer)session.getAttribute("age");
%>
<h1>이름 : <%= name %></h1>
<h1>나이 : <%= age %></h1>
<a href = "session_test.jsp">session Test</a>
</body>
</html>