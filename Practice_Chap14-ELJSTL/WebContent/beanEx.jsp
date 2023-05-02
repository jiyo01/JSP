<%@page import="java.util.ArrayList"%>
<%@page import="sec02_exam.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="memberList" class="java.util.ArrayList" />
<jsp:useBean id="memberMap" class="java.util.HashMap" />

<%! ArrayList mem = null; 
	Member member = null;
%>

<%
	//HashMap에 값을 저장을 하고 있다.
	memberMap.put("id", "park");
	memberMap.put("pw", "1234");
	memberMap.put("name", "박길동 ");
	memberMap.put("email", "park@naver.com");
	
	//멤버객체를 생성하고 있다. 
	Member member1 = new Member("An", "1234", "안길동", "an@naver.com");
	Member member2 = new Member("Cha", "1234", "차길동", "cha@naver.com");
	
	//ArrayList에 객체를 추가하고 있다.
	memberList.add(member1);
	memberList.add(member2);
	
	memberMap.put("memberList", memberList);
%>
<!-- 변수 memberList에 memberMap.memberList값으로 저장되어짐. -->
<c:set var="memberList" value="${memberMap.memberList}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>JSTL라이브러리 set태그-bean활용</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="yellow">
			<td width="20%"><b>아이디</b></td>
			<td width="20%"><b>비밀번호</b></td>
			<td width="20%"><b>이름</b></td>
			<td width="20%"><b>이메일</b></td>
		</tr>
		<!-- 아래는 한 행은 HashMap에 직접 저장한 것을 출력함 -->
		<tr align="center">
			<td><b>${memberMap.id}</b></td>
			<td><b>${memberMap.pw}</b></td>
			<td><b>${memberMap.name}</b></td>
			<td><b>${memberMap.email}</b></td>
		</tr>
		<!-- 아래 두 행은 ArrayList에 저장된 객체이다.
			 하지만 2개의 객체를 다시 HashMap에 저장을 했다. -->
		<tr align="center">
			<td><b>${memberList[0].id}</b></td>
			<td><b>${memberList[0].pw}</b></td>
			<td><b>${memberList[0].name}</b></td>
			<td><b>${memberList[0].email}</b></td>
		</tr>
		<tr align="center">
			<td><b>${memberList[1].id}</b></td>
			<td><b>${memberList[1].pw}</b></td>
			<td><b>${memberList[1].name}</b></td>
			<td><b>${memberList[1].email}</b></td>
		</tr>
		<!-- 퀴즈 : memberMap에 저장되어 있는 Member값 출력해보기 -->
		<tr align="center">
			<td><b>${memberMap.get("memberList")[0].id}</b></td>
			<td><b>${memberMap.get("memberList")[0].pw}</b></td>
			<td><b>${memberMap.get("memberList")[0].name}</b></td>
			<td><b>${memberMap.get("memberList")[0].email}</b></td>
		</tr>
		<%
			mem = (ArrayList)memberMap.get("memberList");
			member = (Member)mem.get(1);
		%>
		<tr align="center">
			<td><%= member.getId()%> </td>
			<td><%= member.getPw() %></td>
			<td><%= member.getName() %></td>
			<td><%= member.getEmail() %></td>
		</tr>
	</table>
</body>
</html>