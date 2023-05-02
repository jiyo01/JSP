<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인클루드 액션태그 테스트</title>
</head>
<body>
	<h1>include_test.jsp페이지입니다.</h1>
	
	<%-- 페이지 지시자 include
	1. 처리시간 : JSP파일을 자바 소스로 변환할 때 처리
	2. 기능 : 현재 파일에 삽입
	3. 데이터 전달 방법 : 페이지 내에서 변수를 선언한 후, 변수에 값을 저장해서 전달
	4. 용도 : 다수의 JSP페이지에서 공통적으로 사용되는 코드나 저작권 같은 문장을 포함
	
	액션태그 include
	1. 처리시간 : 요청시간에 처리
	2. 기능 : 별도의 파일 요청 처리 흐름을 이동
	3. 데이터 전달 방법 : <jsp:param>을 이용하여 파라미터 전달
	4. 용도 : 화면의 레이아웃의 일부분을 모듈화 시키고자 할 때 주로 사용 --%>
	
	<!-- 그리고, flush속성을 true로 설정을 하면 포함될 페이지로 이동하기 전에 버퍼를 다 비우고
	포함될 페이지로 이동한다. 통상 false로 설정을 해줘야 한다. -->
	<jsp:include page="include_test_sample.jsp" flush="true"/>
	<%-- <%@ include file="include_test_sample.jsp"%> --%>
	
	<h1>다시 include_test.jsp페이지입니다.</h1>
</body>
</html>