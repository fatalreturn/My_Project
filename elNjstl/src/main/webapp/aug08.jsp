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
	//이벤트 당첨자의 이름을 배열에 저장합니다.
	String[] winner = {"홍길동","김철수","박동혁"};
	//이벤트 상품 이름을 배열에 저장
	String[] gift = {"대형 TV", "대형 냉장고", "대형 세탁기"};
	//당첨자 명단과 상품명을  jsp(winner.jsp)에서 출력
	request.setAttribute("W", winner);
	request.setAttribute("G", gift);
	RequestDispatcher rd = request.getRequestDispatcher("winner.jsp");
	rd.forward(request, response);
%>


</body>
</html>