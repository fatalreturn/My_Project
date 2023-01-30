<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니</title>
</head>
<body>

		<div align="center">
		<h3>장바구니 리스트</h3>
		<table border="1">
			<tr>
				<th>음료명</th>
				<th>주문 갯수</th>
			</tr>
			<c:forEach items="${drinkSet.drinkList}" var="drinkSet">

				<tr>
					<td>${drinkSet.drink.drinkName }</td>
					<td>${drinkSet.orderCount }</td>
				</tr>
			</c:forEach>
		</table>
	</div>
	<br/>
	<a href="../drink/index.html">메뉴 리스트로 돌아가기</a>

	
</body>
</html>