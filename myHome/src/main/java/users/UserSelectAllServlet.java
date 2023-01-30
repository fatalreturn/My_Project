package users;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.DBExpert;

@WebServlet("/UserSelectAllServlet")
public class UserSelectAllServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserSelectAllServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pageNo = request.getParameter("PAGENO");
		DBExpert dbe = new DBExpert();
		ArrayList<User> list = dbe.selectAllUser(pageNo);
		int count = dbe.userCount();
		int pageCount = count / 5;
		if(count % 5 != 0) pageCount++;
		request.setAttribute("USERS", list);
		request.setAttribute("PAGES", pageCount);
		RequestDispatcher rd = request.getRequestDispatcher("template.jsp?BODY=allUsers.jsp");
		rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
