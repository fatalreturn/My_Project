<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
X = ${param.N1 }, Y = ${param.N2 }<br/>
X + Y = ${param.N1 + param.N2 }<br/>
X = Y = ${param.N1 - param.N2 }<br/>
X * Y = ${param.N1 * param.N2 }<br/>
X / Y = ${param.N1 / param.N2 }<br/>
X % Y = ${param.N1 % param.N2 }<br/>
X가 더 큽니까? ${param.N1 - param.N2 > 0 }<br/>
Y가 더 큽니까? ${param.N2 - param.N1 > 0 }<br/>
X와 Y가 모두 양수입니까? ${param.N1 > 0 && param.N2 > 0 }<br/>
X와 Y가 같습니까? ${param.N1 == param.N2 ? "예":"아니오" }<br/>
X에 값이 있나요?${empty param.N1 }<br/>
Y에 값이 있나요? ${param.N2 == null }<br/>
</body>
</html>