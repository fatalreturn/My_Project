package aug05;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculateServlet
 */
@WebServlet("/calculate.do")
public class CalculateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculateServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String n1 = request.getParameter("N1");
		String n2 = request.getParameter("N2");
		String btn = request.getParameter("btn");
		int n1Int = Integer.parseInt(n1);
		int n2Int = Integer.parseInt(n2);
		int sum = n1Int + n2Int;
		int sub = n1Int - n2Int;
		int mul = n1Int * n2Int;
		int div = n1Int / n2Int;
		if(btn.equals("결과보기1")) {
			System.out.println("결과보기1 선택");
		}else if(btn.equals("결과보기1_1")) {
			System.out.println("결과보기1_1 선택");
		}
		//화면을 사칙연산의 결과(calcResult.jsp)로 전환
		//1. Redirect, 2.Forward, 3. 둘 다
		
//		 response.sendRedirect(
//		 "calcResult.jsp?A="+sum+"&B="+sub+"&C="+mul+"&D="+div);
		 
		//2번 forward
		/*
		 * RequestDispatcher rd = request.getRequestDispatcher("calcResult.jsp?A="+sum+
		 * "&B="+sub+"&C="+mul+"&D="+div); rd.forward(request, response);
		 */
		request.setAttribute("A", sum);
		request.setAttribute("B", sub);
		request.setAttribute("C", mul);
		request.setAttribute("D", div);
		RequestDispatcher rd = request.getRequestDispatcher("calcResult.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
