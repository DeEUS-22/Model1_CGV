<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.model1_cgv.vo.CgvBoardVO" %>
<%@ page import = "com.model1_cgv.dao.CgvBoardDAO" %>
<%
	String bid = request.getParameter("bid");
	CgvBoardDAO dao = new CgvBoardDAO();
	CgvBoardVO vo = dao.select(bid);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정하기</title>
<link rel="stylesheet" href="http://localhost:9000/model1_cgv/css/cgv.css">
<script src="http://localhost:9000/model1_cgv/js/jquery-3.6.0.min.js"></script>
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
	<h1>게시판-수정하기</h1>
	<form name="boardUpdateForm" action="boardUpdateController.jsp" method="post">
		<input type="hidden" name="bid"  value="<%=vo.getBid() %>" >
		<ul>
			<li>
				<label>제목</label>
				<input type="text" name="btitle" id="btitle" value="<%=vo.getBtitle() %>">
			</li>
			<li>
				<label>내용</label>
				<textarea name="bcontent"><%= vo.getBcontent() %></textarea>
			</li>
			<li>
				<label>파일첨부</label>
				<input type="file" name="file1">
			</li>
			<li>
				<button type="button" class="btn_style" id="btnBoardUpdate">수정완료</button>
				<button type="reset" class="btn_style">다시쓰기</button>
				<a href="board_content.jsp?bid=<%=vo.getBid() %>"><button type="button" class="btn_style">이전페이지</button></a>
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