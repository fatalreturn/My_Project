<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
*당첨자 명단은 다음과 같습니다.* <br/>
1. ${requestScope.W[0] }<br/>
2. ${requestScope.W[1] }<br/>
3. ${requestScope.W[2] }<br/>
* 상품은 다음과 같습니다. *<br/>
1.${requestScope.G[0] }<br/>
2.${requestScope.G[1] }<br/>
3.${requestScope.G[2] }<br/>
<%
// 	String[] name = (String[])request.getAttribute("W"); //당첨자 명단
// 	String[] prod = (String[])request.getAttribute("G"); //상품 이름
// 	out.print("당첨자 명단은 다음과 같습니다.<br/>");
// 	for(int i =0; i<name.length; i++){
// 		out.print(name[i]+"<br/>");
// 	}
// 	out.print("상품은 다음과 같습니다.<br/>");
// 	for(int i=0; i<prod.length; i++){
// 		out.print(prod[i]+"<br/>");
// 	}
%>
</body>
</html>