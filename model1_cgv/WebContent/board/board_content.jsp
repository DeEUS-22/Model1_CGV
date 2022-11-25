<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.model1_cgv.vo.CgvBoardVO" %>
<%@ page import = "com.model1_cgv.dao.CgvBoardDAO" %>
<%
	String bid = request.getParameter("bid");
	CgvBoardDAO dao = new CgvBoardDAO();
	CgvBoardVO vo = dao.select(bid);
	if(vo != null){
		dao.updateHits(bid);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
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
	<h1 class="h1">게시판-상세보기</h1>
	<table class="boardContent">	
		<tr>				
			<th>등록일자</th>
			<td><%= vo.getBdate() %></td>
			<th>조회수</th>
			<td><%= vo.getBhits() %></td>
		</tr>		
		<tr>				
			<th>제목</th>
			<td colspan="3"><%= vo.getBtitle() %></td>
		</tr>
		<tr>				
			<th>내용</th>
			<td colspan="3"><%= vo.getBcontent() %><br><br><br><br></td>
		</tr>
		<tr>
			<td colspan="4">
				<a href="board_update.jsp?bid=<%=vo.getBid()%>"><button type="button" class="btn_style">수정하기</button></a>
				<a href="board_delete.jsp?bid=<%=vo.getBid()%>"><button type="button" class="btn_style">삭제하기</button></a>
				<a href="board_list.jsp">
					<button type="button" class="btn_style">리스트</button>
				</a>
			</td>
		</tr>					
	</table>	
</div>
<!-------------------->
<!-- footer Include -->
<!-------------------->
<iframe src="http://localhost:9000/model1_cgv/footer.jsp" width="100%" height="530px" scrolling="no" frameborder=0></iframe>
</body>
</html>