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
	// 세션이 없으면 세션을 새로 생성 가능. false이면 세션 미생성 및 null 반환
	session = request.getSession(true);
	// 속성 있는지 확인
	Integer count = (Integer)session.getAttribute("count");
	// 속성 없으면 초기값 할당
	if(count == null) 
		count = 0;
	count++;
	session.setAttribute("count", count);
%>
해당 페이지를 <%= session.getAttribute("count")%> 번 접속 하였습니다.
</body>
</html>