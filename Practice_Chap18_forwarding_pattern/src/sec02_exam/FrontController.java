package sec02_exam;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.PersonListService;
import command.Service;
import dto.PersonDto;

//*.do확장자를 여기서 FrontController가 다 도맡아서 처리하겠다라고 명시
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet호출");
		actionDo(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost호출");
		actionDo(request, response);
	}


	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo호출");
		
		//getRequestURI()는 요청된 전체 uri를 가져온다.
		String uri = request.getRequestURI();
		System.out.println("uri값 : " + uri);
		
		//getContextPath()는 프로젝트명이 리턴된다.
		String contextPath = request.getContextPath();
		System.out.println("contextPath값 : " + contextPath);
		
		String command = uri.substring(contextPath.length());
		System.out.println("command값 : " + command);
		
		String viewPage = null;
		
		if(command.equals("/insert.do")) {
			System.out.println("--------------------");
			System.out.println("/insert.do페이지 호출");
			System.out.println("--------------------");
		}
		else if(command.equals("/update.do")) {
			System.out.println("--------------------");
			System.out.println("/update.do페이지 호출");
			System.out.println("--------------------");
		}
		else if(command.equals("/select.do")) {
			System.out.println("--------------------");
			System.out.println("/select.do페이지 호출");
			System.out.println("--------------------");
			
			Service service = new PersonListService();
			ArrayList<PersonDto> dtos = service.execute(request, response);
			System.out.println("PersonListService의 execute()실행 완료");
			viewPage = "./list.jsp";
			
		}
		else if(command.equals("/delete.do")) {
			System.out.println("--------------------");
			System.out.println("/delete.do페이지 호출");
			System.out.println("--------------------");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher(viewPage);
		rd.forward(request, response);
	}
}
