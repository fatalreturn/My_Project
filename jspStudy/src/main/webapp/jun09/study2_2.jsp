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
	switch(result){
	case "C":
				out.print("<h3>컴퓨터 승리입니다.!!!</h3>");
				break;
	case "G":
				out.print("<h3>게이머의 승리입니다.!!!</h3>");
	}
%>

</body>
</html>