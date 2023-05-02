<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 페이지 지시자를 이용해서 isErrorPage속성을 true로 설정을 해준다. 설정을 해줘야
	exception객체를 참조하여 예외 메시지 활용할 수가 있다. -->
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예외 페이지</title>
</head>
<body>
	<!-- 프로그램에 지식이 있는 사람들은 페이지를 보면 예외페이지라는 것을 알 수 있다.
	하지만, 일반 클라이언트는 무슨 소린지 모를것이다. -->
	<%-- <%=exception.getMessage()%> --%>
	<h1>죄송합니다.서비스 실행 중 오류가 발생했습니다.</h1>
	<h1>잠시 후 다시 시도해주시면 감사하겠습니다.</h1>
	<img alt="에러 이미지" src="images/error_image.png">
</body>
</html>





