<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.* " %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<fmt:formatNumber value="3300000" groupingUsed="true" />원<br/>
	<fmt:formatNumber value="3.141592" pattern="#.##" /><br/>
	<fmt:formatNumber value="10.5" pattern="#.00" /><br/>
	<fmt:formatNumber value="0.5" type="percent" /><br/>
	<fmt:formatNumber value="3300000" type="currency"  currencySymbol="￦" /><br/>
	<fmt:formatNumber value="3300000" type="currency"  currencySymbol="￦" groupingUsed="true"/><br/>
	<c:set var="today" value="<%= new Date() %>"/>
	[오늘의 날짜]<fmt:formatDate value="${today  }" /><br/>
	[현재의 시간]<fmt:formatDate value="${today  }" type="time"/>
	<br/>
	<fmt:formatDate value="${today  }" type="both" dateStyle="short" timeStyle="short"/><br/>
	<fmt:formatDate value="${today  }" type="both" dateStyle="medium" timeStyle="medium"/><br/>
	<fmt:formatDate value="${today  }" type="both" dateStyle="long" timeStyle="long"/><br/>
	<fmt:formatDate value="${today  }" type="both" dateStyle="full" timeStyle="full"/>
	
</body>
</html>