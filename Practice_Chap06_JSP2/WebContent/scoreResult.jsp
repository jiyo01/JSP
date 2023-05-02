<%@ page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	int score = Integer.parseInt(request.getParameter("score"));
	
	//post방식으로 보낼때 값을 session저장하여 다른 페이지로 이동할 때 파라미터값을 넘겨야 한다.
	//pageContext는 내장객체이고, 현재 JSP페이지의 컨텍스트를 의미한다. 용도는 다른 내장객체를
	//구하거나 페이지의 흐름 제어, 에러데이터를 얻어낼때 사용한다.
	//pageContext.getSession().setAttribute("name", name);
	//pageContext.getSession().setAttribute("score", score);
	
	//get방식으로 보낼때 
	String encodeName = URLEncoder.encode(name, "UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		if(score < 0 || score >100) {
			out.println("<h1>점수를 잘못 입력하셨습니다.</h1>");
			out.print("<a href=score.jsp>점수 입력창으로 이동</a>");
			return;
		}
	%>
	<%
		if(score >= 60) {
			System.out.println("scoreResult.jsp페이지를 지나갔습니다.");
			//get방식으로 보내기 
			response.sendRedirect("pass.jsp?name=" + encodeName + "&score=" + score);
			
			//점수가 60이상이면 pass.jsp파일로 이동한다.(post방식)
			//response.sendRedirect("pass.jsp");
		} 
		else {
			System.out.println("scoreResult.jsp페이지를 지나갔습니다.");
			//get방식으로 보내기
			response.sendRedirect("notPass.jsp?name=" + encodeName + "&score=" + score);
			
			//점수가 60미만이면 notPass.jsp파일로 이동한다.(post방식)
			//response.sendRedirect("notPass.jsp");
		}
	%>
</body>
</html>