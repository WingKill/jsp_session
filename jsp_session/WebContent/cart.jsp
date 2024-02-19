<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>쇼핑몰 장바구니</h1>
<%
	String id = (String)session.getAttribute("id");

	// 로그인이 되어있는지, 아닌지 체크하는 것
	if(id==null)
		// 로그인 상태가 아니라면, 로그인을 하도록 유도하는 것.
		response.sendRedirect("login.html");
	else
		out.print("계속 쇼핑을 할 수 있습니다.");
%>
<a href="session_test.jsp">session test</a>
</body>
</html>