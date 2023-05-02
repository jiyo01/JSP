package sec03_exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GetorPost
 */
@WebServlet("/GetorPost")
public class GetorPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GetorPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet메서드 호출됨");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); //출력 스트림 얻기
		out.print("안녕하세요<br>");
		out.print("<html><head></head><body>");
		out.print("<h1>doGet방식입니다. 반갑습니다.</h1>");
		out.print("</body></html>");
		
		out.close(); //리소스 해제 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost메서드 호출됨");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print("안녕하세요<br>");
		out.print("<html><head></head><body>");
		out.print("<h1>doPost방식입니다. 반갑습니다</h1>");
		out.print("</body></html>");
		out.close();
	}
}
