<%@page import="java.util.Iterator"%>
<%@page import="sec02_exam.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
	//ArrayList에 3개의 Member객체를 저장을 하는 코드
	List<Member> membersList = new ArrayList<Member>(); //인터페이스 필드의 다형성
	Member member1 = new Member("park", "1234", "박주영", "park@naver.com");
	Member member2 = new Member("ki", "1234", "기성용", "ki@naver.com");
	Member member3 = new Member("kim", "1234", "김연아", "kim@naver.com");
	
	membersList.add(member1);
	membersList.add(member2);
	membersList.add(member3);
%>
<!-- membersList라는 변수에 membersList를 저장하고 있다. -->
<c:set var="membersList" value="<%=membersList%>" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL라이브러리 forEach태그</title>
</head>
<body>
	<table border="1">
		<tr align="center" bgcolor="lightgreen">
			<td width="7%"><b>아이디</b></td>
			<td width="7%"><b>비밀번호</b></td>
			<td width="7%"><b>이름</b></td>
			<td width="7%"><b>이메일</b></td>
		</tr>
		<!-- 아래와 같이 향상된 for문의 형태로 객체들을 가져와서 출력하는게 정석인 방법이다. -->
		<c:forEach var="member" items="${membersList}">
		<tr align="center">
			<td>${member.id}</td>
			<td>${member.pw}</td>
			<td>${member.name}</td>
			<td>${member.email}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>