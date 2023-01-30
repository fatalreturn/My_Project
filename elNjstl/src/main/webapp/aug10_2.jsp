<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="bar" uri="http://taglib5.com" %>
<%@ taglib prefix="rand" uri="http://taglib4.tld" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>Third Party가 작성한 태그 사용</h2>
<rand:randomValue to="10" from="1"/><br/>
<rand:randomValue to="100" from="1"/><br/>
<rand:randomValue to="" from=""/>
<bar:Hbar values="2,4,12" fgcolor="red" width="220" labels="한국, 일본, 중국" bgcolor="blue"/>
<br/>
<bar:Hbar values="2,4,12" fgcolor="red" width="220" labels="한국, 일본, 중국" bgcolor="blue"/>
<h2>매출 상황</h2>
<bar:Vbar values="110,120,90,140" fgcolor="yellow" width="220" labels="1월,2월,3월,4월" bgcolor="blue"/>
<br/>
<bar:Vbar values="2,4,12" fgcolor="red" width="220" labels="한국, 일본, 중국" bgcolor="blue"/>
<br/>
<bar:Vbar values="110,120,90,140,150,160,170"  fgcolor="yellow"  width="550" height="300" labels="1,2,3,4,5,6,7"  bgcolor="green"/>

</body>
