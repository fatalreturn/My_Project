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
	String result = request.getParameter("R");
	if(result.equals("Y")){
%>
	<script type="text/javascript">
		alert("수강신청이 정상적으로 완료되었습니다!");
	</script>
<%
	}else if(result.equals("N")){
%>
	<script type="text/javascript">
		alert("수강신청이 실패하였습니다! 관리자에게 문의해 주세요");
	</script>
<%	
	}
%>
<script type="text/javascript">
	location.href = "index.jsp";
</script>
</body>
</html>