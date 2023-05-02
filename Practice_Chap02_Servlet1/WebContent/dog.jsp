<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>당신이 좋아하는 강아지를 선택하세요!</h1>
	<form action="ChoiceDog" method="post">
		<input type="checkbox" name="dog" value="./images/mal.jpg">말티즈
		<input type="checkbox" name="dog" value="./images/chi.jpg">치와와 
		<input type="checkbox" name="dog" value="./images/pome.jpg">포메라니안
		<input type="checkbox" name="dog" value="./images/welsh.jpg">웰시코기
		<br><br>
		<input type="submit" value="선택">
	</form>
</body>
</html>