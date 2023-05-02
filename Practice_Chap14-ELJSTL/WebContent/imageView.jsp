<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
	.lst_type {
		/* 컨텐츠(이미지)의 요소가 너무 커서 요소 내에 모두 보여주기 힘들 때,
		그것을 어떻게 보여줄지를 결정
		visible : 기본값, hidden : 넘치는 부분 잘라내서 보여지지 않는다. */
		overflow: hidden;
		width: 80%;
		padding: 0px 10px 10px;
		margin: auto;
	}
	.lst_type li {
		overflow: hidden;
		/* 부모요소들의 배치들의 관계를 다 제거하는 태그이다. */
		clear: both;
		color: green;
		font-family: '돋움', Dotum;
		font-size: 12px;
		line-height: 90px;
		list-style: none;
		border-bottom: 2px solid lightgray;
		/* 위치 조절이 가능하게 만드는 속성 */
		position: relative;
	}
	.lst_type li img {
		display: inline;
		float: left;
		margin-left: 50px;
		position: absolute;
	}
	/* a태그에 마우스가 올라가면... */
	.lst_type li a:hover {
		text-decoration: overline;
	}
	.lst_type li span {
		color:blue;
		margin-left: 330px;
		font-family: '돋움', Dotum;
		font-size: 14px;
		font-weight: bold;
	}
	
</style>
<meta charset="UTF-8">
<title>이미지 출력하기</title>
</head>
<body>
	<!-- ul(unordered list)태그는 순서가 없는 목록을 나타내는 태그, 하위 태그로 li태그 사용한다. -->
	<ul class="lst_type">
		<li>
			<span style="margin-left: 50px">이미지</span>
			<span>이미지 이름</span>
			<span>선택하기</span>
		</li>
		<c:forEach var="i" begin="1" end="3" step="1">
		<li>
			<a href="#" style="margin-left: 50px">
			<img alt="사진1" src="./images/image${i}.jpg" width="90" height="90"></a> 
			<a href="#"><strong>이미지${i}</strong></a>
			<a href="#"><input name="chk${i}" type="checkbox"></a>
		</li>
		</c:forEach>
	</ul>
</body>
</html>