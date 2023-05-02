package sec03_exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class GuguServlet
 */
@WebServlet("/gugu")
public class GuguServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GuguServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		//getParameter()는 리턴타입이 String이므로 숫자로 바꿔주는 코드 
		int number = Integer.parseInt(request.getParameter("num"));
		
		//예외 처리 코드
		if(number < 2 || number > 9) {
			out.println("<html><head></head><body>");
			out.println("<h2>구구단은 2~9단 사이입니다.</h2>");
			out.println("</body></html>");
			return; //메서드 끝내기 
		}
		
		out.print("<table boarder=1 width=800 align=center>");
		out.print("<tr align=center bgcolor='#FFFF66'>");
		out.print("<td colspan=4>" + number + "단 출력 <br>");
		
		for(int i=1; i<10; i++) {
			//홀수, 짝수에 따라서 배경색을 바꾸어주는 코드 
			if(i % 2 == 0)
				out.print("<tr align=center bgcolor='#ACFA58'>");
			else 
				out.print("<tr align=center bgcolor='#81BEF7'>");
			
			out.print("<td width=200>" + number + "</td>");
			out.print("<td width=200>" + i + "</td>");
			out.print("<td width=200>" + number + "*" + i + "</td>");
			out.print("<td width=200>" + number*i + "</td>");
			out.print("</tr>");
		}
		out.print("</table>");
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
