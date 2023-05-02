<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립-선언부, 표현식 실습-5</title>
</head>
<body>
	<%!
		String str = "1부터 100까지의 합";	
	
		public int sum() {
			int total = 0;
			for(int i = 1; i <= 100; i++) {
				total += i;
			}
			return total;
		}
	%>
	
	<h1><%=str%>은 <b><%=sum()%>입니다.</b></h1><br>
	<h1><%=str%>에 3을 곱하면 <b><%=sum()*3%>입니다.</b></h1><br>
	<h1><%=str%>에 1000을 나누면 <b><%=sum()/1000.0%>입니다.</b></h1><br>
</body>
</html>