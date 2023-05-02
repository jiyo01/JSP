<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>점수 입력 창</title>
</head>
<body>
	<form action="scoreResult.jsp" method="post">
		이름 : <input type="text" name="name" size="10"><br>
		점수 : <input type="number" name="score" size="10"><br>
		<input type="submit" value="합격확인">
	</form>
	<!-- scoreResult.jsp 페이지를 만들어서 잘못된 숫자값이 들어오면 예외처리구문을 만들고,
		60점 이상이면 pass.jsp로 이동시켜 "홍길동님 75점으로 합격하셨습니다." 출력을 시키고
		점수입력페이지(score.jsp)로 이동시키는 내용을 만들고
		60점 미만이라면 notPass.jsp위와 똑같이 "홍길동님 55점으로 불합격하셨습니다." 출력시키고
		점수입력페이지(score.jsp) 이동시키는 내용을 작성하세요.  -->
</body>
</html>