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
	int count;
	if(session.getAttribute("count") == null){
		session.setAttribute("count", 1);
		count = (Integer)session.getAttribute("count");	
	}		
	else{
		count = (Integer)session.getAttribute("count");
		session.setAttribute("count", ++count);
	}		
%>

해당 페이지에 <%= count %>번 접속하였습니다.
</body>
</html>