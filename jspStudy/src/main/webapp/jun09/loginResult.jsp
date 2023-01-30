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
	String result = request.getParameter("R");
	String id = request.getParameter("ID");
	if(result.equals("YES")){
		out.print(
			"<h2>로그인 되었습니다. 환영합니다~"+id+"님~</h2>");
	}else {
		out.print(
		"<h2>로그인 되지 않았습니다. 계정과 암호를 확인하세요.</h2>");
	}
%>
</body>
</html>









