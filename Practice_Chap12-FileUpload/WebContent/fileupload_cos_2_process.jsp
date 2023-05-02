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
		
		//각각 업로드 된 이름과 제목을 가져오고 있다.
		String name1 = multi.getParameter("name1");
		String title1 = multi.getParameter("title1");
		
		String name2 = multi.getParameter("name2");
		String title2 = multi.getParameter("title2");
		
		String name3 = multi.getParameter("name3");
		String title3 = multi.getParameter("title3");
		
		//getFileNames()는 업로드한 파일의 이름을 전체 다 가져온다. 열거형 타입으로
		Enumeration files = multi.getFileNames();
		
		String file3 = (String)files.nextElement();
		String filename3 = multi.getFilesystemName(file3);
		
		String file2 = (String)files.nextElement();
		String filename2 = multi.getFilesystemName(file2);
		
		String file1 = (String)files.nextElement();
		String filename1 = multi.getFilesystemName(file1);
		
		out.println("남은 파일수 : " + files.hasMoreElements());
		%>
		
		<table border="1">
			<tr>
				<th width="100">이름</th>
				<th width="100">제목</th>
				<th width="100">파일</th>
			</tr>
			<%
				out.print("<tr><td>" + name1 + "</td>");
				out.print("<td>" + title1 + "</td>");
				out.print("<td>" + filename1 + "</td></tr>\n");
				
				out.print("<tr><td>" + name2 + "</td>");
				out.print("<td>" + title2 + "</td>");
				out.print("<td>" + filename2 + "</td></tr>\n");
				
				out.print("<tr><td>" + name3 + "</td>");
				out.print("<td>" + title3 + "</td>");
				out.print("<td>" + filename3 + "</td></tr>\n");
			%>
		</table>
		<br>
		
</body>
</html>