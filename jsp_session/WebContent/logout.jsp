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
		session.removeAttribute("id");
		out.print("id가 세션에서 삭제되었습니다.");
	%>
	<a href="session_test.jsp">세션 확인</a>
</body>
</html>