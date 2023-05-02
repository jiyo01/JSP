package sec02_exam;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class NowTime
 */
@WebServlet("/Now")
public class NowTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NowTime() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("utf-8"); //문자셋 인코딩 부분
		response.setContentType("text/html; charset=utf-8"); //응답할 내용 부분 설정
		//웹 화면으로 출력을 하게 해줄 출력스트림 얻기
		PrintWriter out = response.getWriter(); //getWriter()메소드가 출력 스트림을 얻어준다
		out.println("<html>");
		out.println("<head>");
		out.println("<title>현재 시간</title>");
		out.println("<body>");
		out.println("<h1>지금 시간은 </h1>");
		out.println(new Date());
		out.println("<h1>입니다.</h1>");
		out.println("</body>");
		out.println("</head>");
		out.println("</html>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
