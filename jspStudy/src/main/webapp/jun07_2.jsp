<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
		//1~6까지 난수가 필요
	int gamer = (int)(Math.random() * 6 + 1);
	int computer = (int)(Math.random() * 6 + 1);
	if(gamer > computer){//게이머 승
%>
게이머 승 !! <%= gamer %> vs <%= computer %>
<%
	}else if(gamer == computer){//무승부
%>
무승부 !! <%= gamer %> vs <%= computer %> 
<%
	}else {//컴퓨터 승
%>
컴퓨터 승 !! <%= gamer %> vs <%= computer %> 
<%
	}
%>
</body>
</html>









