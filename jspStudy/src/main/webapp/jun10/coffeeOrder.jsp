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
	String menu = request.getParameter("MENU");//메뉴이름
	String quantity = request.getParameter("NUM");//갯수
	String bread = request.getParameter("BREAD");//빵이름
	String quan = request.getParameter("QUAN");//빵갯수
	int grandTotal = findAllPrice(
			menu,quantity,bread,quan);//커피+빵 총계
// 	int breadPrice = findBreadTotal(bread,quan);//빵총계
// 	int totalPrice = findTotal(menu, quantity);//커피총계
// 	int grandTotal = totalPrice + breadPrice;  
	//결과를 보여주는 JSP(coffeeResult.jsp)로 전환
	//Redirect, Forward, Redirect/Forward(정답)
// 	response.sendRedirect(
// 			"coffeeResult.jsp?TOTAL="+grandTotal);
	request.setAttribute("total", grandTotal);
	RequestDispatcher rd = 
		request.getRequestDispatcher("coffeeResult.jsp");
	rd.forward(request, response);
%>
<%!
	int findAllPrice(String m1,String m2,
			String m3,String m4){
		int drinkNum = Integer.parseInt(m2);//음료수 갯수
		int breadNum = Integer.parseInt(m4);//빵 갯수
		int totalPrice = 0;
		switch(m1){
		case "A": totalPrice=totalPrice+(drinkNum*2000);
				break;
		case "B": totalPrice=totalPrice+(drinkNum*3000);
				break;
		case "C": totalPrice=totalPrice+(drinkNum*3500);
				break;
		case "D": totalPrice=totalPrice+(drinkNum*3300);
				break;
		case "E":totalPrice=totalPrice+(drinkNum*3800);
		}
		switch(m3){
		case "A": totalPrice=totalPrice+(drinkNum*1000);
				break;
		case "B": totalPrice=totalPrice+(drinkNum*2000);
				break;
		case "C": totalPrice=totalPrice+(drinkNum*500);
				break;
		case "D": totalPrice=totalPrice+(drinkNum*1500);
				break;
		case "E":totalPrice=totalPrice+(drinkNum*800);
		}
		return totalPrice;
	}
	int findBreadTotal(String bread, String number){
		int num = Integer.parseInt(number);
		int price = 0;
		if(bread.equals("A")){//핫도그:1000
			price = 1000;
		}else if(bread.equals("B")){//쿠루아상:2000
			price = 2000;
		}else if(bread.equals("C")){//크림빵:500
			price = 500;
		}else if(bread.equals("D")){//호밀빵:1500
			price = 1500;
		}else if(bread.equals("E")){//고로케:800
			price = 800;	
		}
		return price * num;
	}
	int findTotal(String name,String number){
		int num = Integer.parseInt(number);
		int price = 0;
		if(name.equals("A")){//아메리카노:2000
			price = 2000;
		}else if(name.equals("B")){//카푸치노:3000
			price = 3000;
		}else if(name.equals("C")){//카페라테:3500
			price = 3500;
		}else if(name.equals("D")){//카페오레:3300
			price = 3300;
		}else if(name.equals("E")){//카페모카:3800
			price = 3800;	
		}
		int totalPrice = price * num;//총액 계산
		return totalPrice;
	}
%>
</body>
</html>









