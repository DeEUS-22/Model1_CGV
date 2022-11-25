<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String bid = request.getParameter("bid");
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 삭제하기</title>
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
	<h1 class="h1">게시판-삭제하기</h1>
	<form name="boardDeleteForm" action="boardDeleteController.jsp" method="post">
		<input type="hidden" name="bid" value="<%=bid%>">
		<ul>
			<li>
				<img src="../images/delete.jpg">			
			</li>				
			<li>
				<div>정말로 삭제하시겠습니까?</div>
			</li>
			<li>
				<button type="submit" class="btn_style">삭제완료</button>					
				<a href="board_content.jsp?bid=<%= bid %>"><button type="button" class="btn_style">이전페이지</button></a>
				<a href="board_list.jsp"><button type="button" class="btn_style">리스트</button></a>
			</li>
		</ul>
	</form>
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>