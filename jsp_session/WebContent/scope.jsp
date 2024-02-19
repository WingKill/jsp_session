<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>scope.jsp</title>
</head>
<body>
<%
	//pageContext는 같은 페이지에서만 써먹을 수 있다.
	pageContext.setAttribute("user_name", "admin");
	String user = (String)pageContext.getAttribute("user_name");
	
	//session 영역
	session.setAttribute("address","서울시 종로구");
	String address = (String)session.getAttribute("address");
	
	//Application 영역 (해당 웹 사이트(tomcat)가 죽을 때까지)
	application.setAttribute("password", "1234");
	String password = (String)application.getAttribute("password");
	
	//request 영역
	request.setAttribute("age", 20);
	Integer age = (Integer)request.getAttribute("age");
	// int age = (int)request.getAttribute("age");
%>

<jsp:forward page="scope_session.jsp" />
<h1>유저 : <%= user %></h1>
<h1>주소 : <%= address %></h1>
<h1>암호 : <%= password %></h1>
<h1>나이 : <%= age %></h1>
<a href="scope_session.jsp">세션 영역 확인</a>
</body>
</html>