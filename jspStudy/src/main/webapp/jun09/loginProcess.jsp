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
	String id = request.getParameter("ID");
	String password = request.getParameter("PWD");
	String result = "";
	if(id.equals(password)){//로그인 성공
		result = "YES";
	}else {//로그인 실패
		result = "NO";
	}
	response.sendRedirect(
		"loginResult.jsp?R="+result+"&ID="+id);
%>
</body>
</html>








