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
	String score = request.getParameter("SCORE");
	int number = Integer.parseInt(score);
	String result = "";
	if(number >= 90){
		result = "A";
	}else if(number >= 80){
		result = "B";
	}else if(number >= 70){
		result = "C";
	}else if(number >= 60){
		result = "D";
	}else{
		result = "F";
	}
%>
<h2>당신의 학점은 <%= result %>입니다.</h2>
</body>
</html>









