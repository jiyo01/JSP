<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 값 확인</title>
</head>
<body>
	<%
		Object obj1 = session.getAttribute("abcde");
		Integer intValue = (Integer)obj1;  //다운캐스팅
		out.println("abcde : " + intValue);
		
		Object obj2 = session.getAttribute("thisplus");
		String str = (String)obj2;  //다운캐스팅
		out.println("thisplus : " + str);
	%>
	<br><br>
	<%
		String sName;
		String sValue;
		
		//getAttributeNames()의 반환값은 Enumeration<String> 열거형 제네릭 타입이다.
		//여기서는 String만 받도록 제네릭 타입을 설정했다.
		//getAttributeNames()은 세션의 설정되어있는 모든 Name값을 다 얻어오는 것이다.
		Enumeration<String> en = session.getAttributeNames();
		
		while(en.hasMoreElements()) {
			sName = en.nextElement();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		
		out.println("===================================<br>");
		//sessionID는 웹브라우저 하나당 생기는 유니크한 값이다.물론 서버에서 생성해준다. 
		String sessionID = session.getId();
		out.println("sessionID :" + sessionID + "<br>");
		
		int sessionInterval = session.getMaxInactiveInterval();
		out.println("세션 유효시간 :" + sessionInterval + "<br>");
		
		out.println("===================================<br>");
		//abcde세션의 특정한 값을 삭제하는 코드이다.
		session.removeAttribute("abcde");
		Enumeration<String> en1 = session.getAttributeNames();
		
		while(en1.hasMoreElements()) {
			sName = en1.nextElement();
			sValue = session.getAttribute(sName).toString();
			out.println("sName : " + sName + "<br>");
			out.println("sValue : " + sValue + "<br>");
		}
		
		out.println("===================================<br>");
		
		session.invalidate();  //세션의 모든 값을 지운다.
		
		if (request.isRequestedSessionIdValid()) {
			out.println("session valid");
		} 
		else {
			out.println("session invalid");
		}
	%>
</body>
</html>