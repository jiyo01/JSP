package sec04_exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()호출됨");
		
		//클라이언트가 요청한 파라미터 값들을 인코딩을 설정해주는 코드
		request.setCharacterEncoding("utf-8");
		//클라이언트에게서 넘어오는 id,이름,비밀번호 값을 받고 인코딩 설정후 출력스트림을 얻고 화면에 뿌린다. 
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		//클라이언트에게 뿌려주면 화면이 되는 코드
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h1>아이디 : " + id + "</h1><br>");
		out.println("<h1>이름 : " + name + "</h1><br>");
		out.println("<h1>비밀번호 : " + pw + "</h1><br>");
		out.close();	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()호출됨");
		
		//클라이언트가 요청한 파라미터 값들을 인코딩을 설정해주는 코드
		request.setCharacterEncoding("utf-8");
		//클라이언트에게서 넘어오는 id,이름,비밀번호 값을 받고 인코딩 설정후 출력스트림을 얻고 화면에 뿌린다. 
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		//클라이언트에게 뿌려주면 화면이 되는 코드
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.println("<h1>아이디 : " + id + "</h1><br>");
		out.println("<h1>이름 : " + name + "</h1><br>");
		out.println("<h1>비밀번호 : " + pw + "</h1><br>");
		out.close();	
	}
}
