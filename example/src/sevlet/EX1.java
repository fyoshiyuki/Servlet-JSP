package sevlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex1")
public class EX1 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		//UTF-8のHTMLをレスポンス
		//response.setContentType("text/html; charset=UTF-8");
		response.setContentType("ABCDE");
		PrintWriter out = response.getWriter();
		out.println("<html><body>Hello</body></html>");
	}

}
