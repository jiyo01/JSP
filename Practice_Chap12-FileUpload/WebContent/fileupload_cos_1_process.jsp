<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일 업로드 처리</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
		MultipartRequest multi = new MultipartRequest(
										request,
										"/Users/Jiyo/jspupload",  //업로드 될 경로를 지정
										1000*1024*1024, //파일의 크기를 지정(1GB)
										"utf-8",		//인코딩 방식
										//파일이름에 대한 정책(덮어쓰는 것이 아니라 동일한
										//이름의 파일이라면 새로운 파일로 만들어준다.)
										new DefaultFileRenamePolicy()
									);
		Enumeration params = multi.getParameterNames();
		
		while(params.hasMoreElements()) {
			String name = (String)params.nextElement();
			String value = multi.getParameter(name);
			out.println(name + " = " + value + "<br>");
		}
	%>
</body>
</html>