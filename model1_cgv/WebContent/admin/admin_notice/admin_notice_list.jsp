<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지관리 - 공지사항 리스트</title>
<link rel="stylesheet"  href="http://localhost:9000/model1_cgv/css/cgv.css">
</head>
<body>
	<!-------------------->
	<!-- header Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/header.jsp" width="100%" height="160px" scrolling="no" frameborder=0 ></iframe>
	
	<!-------------------->
	<!----- content ------>
	<!-------------------->
	<div class="content">
		<h1>공지사항-리스트</h1>
		<table class="board">
			<tr>
				<td colspan="4">
					<a href="admin_notice_write.jsp">
					<button type="button" class="btn_style">글쓰기</button>
					</a>
				</td>
			</tr>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>등록날짜</th>
				<th>조회수</th>
			</tr>
			<tr>
				<td>1</td>
				<td>1월 행사</td>
				<td>2022-11-18</td>
				<td>10</td>
			</tr>
			<tr>
				<td colspan="4">1234</td>
			</tr>
		</table>	
	</div>
	
	<!-------------------->
	<!-- footer Include -->
	<!-------------------->
	<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>