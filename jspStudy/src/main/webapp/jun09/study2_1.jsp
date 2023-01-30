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
	//컴퓨터를 위해서 난수를 구한다.(1~2)
	int computer = (int)(Math.random() * 2 + 1);
	String gamer = request.getParameter("GAMER");
	
	int gamerInt = Integer.parseInt(gamer);
	//문자열을 정수로 바꾼다.
	String result = "";//게임의 결과를 저장할 변수 선언
	if(computer == gamerInt){//게이머가 이긴 경우
		result = "G";
	}else {//컴퓨터가 이긴 경우
		result = "C";
	}
	response.sendRedirect("study2_2.jsp?R="+result);
%>

</body>
</html>








