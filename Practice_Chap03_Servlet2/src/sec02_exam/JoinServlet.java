package sec02_exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinServlet
 */
@WebServlet("/join")
public class JoinServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()호출");
		request.setCharacterEncoding("utf-8"); //한글 깨짐을 방지하기 위해서 설정함
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String pwconfirm = request.getParameter("pwconfirm");
		String[] hobby = request.getParameterValues("hobby"); //체크박스의 경우 다중값이므로 String[] 타입으로 리턴한다.
		String major = request.getParameter("major");
		String collage = request.getParameter("collage");
		
		//위의 값들을 받아서 클라이언트에게 출력해준다.
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter(); //출력 스트림 얻기
		
		if(!pw.equals(pwconfirm)) {
			out.println("<h3>비밀번호가 일치하지 않습니다.확인해주세요!</h3>");
			return;
		}
		
		out.println("<html><head></head><body>");
		out.println("아이디 : " + id + "<br>");
		out.println("비밀번호 : " + pw + "<br>");
		out.println("비밀번호 확인 : " + pwconfirm + "<br>");
		out.println("취미 : " + Arrays.toString(hobby) + "<br>");
		out.println("전공 : " + major + "<br>");
		out.println("학부 : " + collage + "<br>");
		out.println("</body></html>");
		out.close();
	}
}
