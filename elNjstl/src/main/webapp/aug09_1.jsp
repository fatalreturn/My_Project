<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.* " %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JSTL의 지역과 시간대를 바꾸는 기능</h2>
	<c:set value="<%= new Date() %>" var="today"/>
	<h3>대한민국</h3>
	<fmt:setLocale value="ko_kr"/>
	금액 : <fmt:formatNumber value="3300000" type="currency" currencySymbol="￦"/><br/>
	일시 : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<br/>
	<h3>일 본</h3>
	<fmt:setLocale value="ja_jp"/>
	금액 : <fmt:formatNumber value="3300000" type="currency"/><br/>
	일시 : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<h3>미 국</h3>
	<fmt:setLocale value="en_us"/>
	금액 : <fmt:formatNumber value="3300000" type="currency"/><br/>
	일시 : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<h3>러시아</h3>
	<fmt:setLocale value="ru_ru"/>
	금액 : <fmt:formatNumber value="3300000" type="currency"/><br/>
	일시 : <fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	
	<fmt:setLocale value="ko_kr"/>
	<%
		String[] timeList = TimeZone.getAvailableIDs();
		for(int i=0; i<timeList.length; i++){
			out.print(timeList[i]+"<br/>");
		}
	%>
	<h3>서울의 현재 시간</h3>
	<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	<h3>홍콩의 현재 시간</h3>	
	<fmt:timeZone value="Asia/Hong_Kong">
		<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	</fmt:timeZone>
	<h3>런던의 현재 시간</h3>
	<fmt:timeZone value="Europe/London">
		<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	</fmt:timeZone>
	<h3>두바이의 현재 시간</h3>
	<fmt:timeZone value="Asia/Dubai">
		<fmt:formatDate value="${today  }" type="both" timeStyle="full" dateStyle="full"/>
	</fmt:timeZone>
</body>
</html>