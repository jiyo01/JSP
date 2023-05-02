<%@page import="command.PersonListService"%>
<%@page import="command.Service"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dto.PersonDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	    Service service = new PersonListService();
		ArrayList<PersonDto> dtos = service.execute(request, response);
		
		for (int i = 0; i < dtos.size(); i++) {
			PersonDto dto = dtos.get(i);
			String id = dto.getId();
			String pw = dto.getPw();
			String name = dto.getName();
			String eMail = dto.geteMail();
			String address = dto.getAddress();
			
			out.println(id + ", " + pw + ", " + name + ", " + eMail + ", " + address + "<br><hr>");
		}	
	%>
</body>
</html>